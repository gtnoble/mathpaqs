with Samples;
with Generic_Random_Functions, U_Rand;

with Ada.Text_IO;                       use Ada.Text_IO;

procedure Test_Samples is

  type Real is digits 14;
  type Quantile_table is array(Positive range <>) of Real;

  package RS is new Samples(Real, Quantile_table);

  package GRF is new Generic_Random_Functions(Real);
  package RUR is new U_Rand(Real);
  Gen: RUR.Generator;

  s: RS.Sample(10_000);

  level: constant Quantile_table:=
   (0.0, 0.0001, 0.001, 0.01,
    0.1, 0.2, 0.25, 0.3, 0.4, 0.5, 0.6, 0.75, 0.8,
    0.9, 0.95, 0.975, 0.98,
    0.99, 0.995, 0.996, 0.9975, 0.998,
    0.999, 0.9995, 0.9996, 0.99975, 0.9998,
    0.9999
   );

  -- R:
  -- quantile(t, c(0.0, 0.0001, 0.001, 0.01, ...))
  -- write.csv2(quantile(t, c(0.0, 0.0001, 0.001, 0.01, ...)),file="quant.csv")

  m: RS.Measure(level'Last);

  package RIO is new Ada.Text_IO.Float_IO(Real);
  use RIO;

  f: File_Type;

  sep: constant Character:= ';';

  procedure Title(t: String) is
  begin
    Put_Line(t);
    Put_Line(f, t & sep & "------------");
  end Title;

  procedure Display_Measure(m: RS.Measure) is
  begin
    Put("Mean:"); Put(m.mean); New_Line;
    Put("Std dev:"); Put(m.std_dev); New_Line;
    Put("Stat err:"); Put(m.stat_err); New_Line;
    for i in m.level'Range loop
      Put("P(X<");
      Put(m.VaR(i));
      Put(") = ");
      Put(m.level(i));
      New_Line;
      --
      Put(f, m.VaR(i));
      Put(f, sep);
      Put(f, m.level(i));
      New_Line(f);
    end loop;
  end Display_Measure;

  large_1: constant:= 100_000;
  u, u1, u2, n1, n2: Real;

begin
  m.level:= level;
  -- Output file for further study, graphics,...
  Create(f, Out_File, "test_samples.csv");
  --
  Title("=== Trivial test: add only 0 as occurence");
  -- R:
  -- t <- sample(c(0),1000,TRUE)
  RS.Initialize(s, 0.0, 1000.0);
  for i in 1..10_000 loop
    RS.Add_occurence(s, 0.0);
  end loop;
  RS.Get_measures(s,m);
  Put_Line("Mean should be zero, std dev should be zero.");
  Display_Measure(m);
  --
  Title("=== Trivial test: add only 0.123 as occurence");
  RS.Initialize(s, 0.0, 1000.0); -- !! narrow it
  for i in 1..100_000 loop
    RS.Add_occurence(s, 0.0123);
  end loop;
  RS.Get_measures(s,m);
  Put_Line("Mean should be 0.0123, std dev should be zero.");
  Display_Measure(m);
  --
  Title("=== Easy test: Discrete Uniform, 2 points");
  -- R:
  -- t <- sample(c(-10,10),100000,TRUE)
  RS.Initialize(s, -10.0, 10.0);
  for i in 1..100_000 loop
    RS.Add_occurence(s, -10.0);
    RS.Add_occurence(s,  10.0);
  end loop;
  RS.Get_measures(s,m);
  Put_Line("Mean should be zero, std dev should converge to 10.");
  Display_Measure(m);
  --
  Title("=== Easy test: Uniform");
  -- R:
  -- t <- runif(100000,-10,10)
  RS.Initialize(s, -10.0, 10.0);
  for i in 0..large_1 loop
    u:= Real(i) / Real(large_1);
    RS.Add_occurence(s, 20.0 * u - 10.0);
  end loop;
  RS.Get_measures(s,m);
  Put_Line("Mean should converge to zero, std dev should converge to 10/sqrt(3) ~= 5.77350269.");
  Display_Measure(m);
  --
  Title("=== Easy test: Normal");
  -- R:
  -- t <- runif(100000,-10,10)
  RS.Initialize(s, -100.0, 100.0);
  RS.Add_occurence(s, -100.0); -- !!
  RUR.Reset(Gen);
  for i in 1..1_000_000 loop
    u1:= RUR.Random(Gen);
    u2:= RUR.Random(Gen);
    GRF.Box_Muller(u1,u2,n1,n2);
    RS.Add_occurence(s, n1);
  end loop;
  RS.Get_measures(s,m);
  Put_Line("Mean should converge to zero, std dev should converge to 1.");
  Display_Measure(m);
  --
  Close(f);
end Test_Samples;