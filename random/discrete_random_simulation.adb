package body Discrete_Random_Simulation is

  function Index_Linear_Search (
    U01 : Probability_value;  --  Probability value. For simulation: random, uniform in [0,1]
    Fx  : Probability_array   --  Fx is the Cumulative distribution function (CDF), F(x)
  )
  return Integer
  is
  begin
    --  Search from top to bottom:
    for i in reverse Fx'Range loop
      if Fx(i) <= U01 then
        return i;
      end if;
    end loop;
    return Fx'First;
  end Index_Linear_Search;

  function Index_Dichotomic_Search (
    U01 : Probability_value;  --  Probability value. For simulation: random, uniform in [0,1]
    Fx  : Probability_array   --  Fx is the Cumulative distribution function (CDF), F(x)
  )
  return Integer
  is
    l, r, i: Integer;
  begin
    l:= Fx'First;
    r:= Fx'Last;
    loop
      i:= l + ((r - l) / 2);  --  This is (l+r) / 2 without overflow problem
      if Fx(i) <= U01 then
        l:= i;
      else
        r:= i;
      end if;
      exit when r-l <= 1;
    end loop;
    --  Finally, a top-bottom search on Fx(r) >= Fx(i) >= Fx(l)
    if Fx(r) <= U01 then
      i:= r;
    elsif Fx(i) <= U01 then
      null;
    else
      i:= l;
    end if;
    return i;
  end Index_Dichotomic_Search;

  subtype Real is Probability_value'Base;  --  Actually, a supertype (remove eventual bounds)

  procedure Prepare_Aliases (
    Fx      : in  Probability_array;  --  Fx is the Cumulative distribution function (CDF), F(x).
    aliases : out Alias_tables        --  Should have the same bounds as Fx
  )
  is
    k : constant Real := Real (Fx'Length);
    average : constant Probability_value := 1.0 / k;
    probabilities: Probability_array (Fx'Range) := To_probs (Fx);
    small, large: array (1 .. Fx'Length) of Integer;
    last_small, last_large: Natural := 0;
    less, more, j: Integer;
  begin
    if Fx'First /= aliases.low_bound or else
       Fx'Last /= aliases.high_bound
    then
      raise Constraint_Error with "Fx and alias table haven't the same bounds";
    end if;
    --
    for i in probabilities'Range loop
      if probabilities (i) >= average then
        last_large := last_large + 1;
        large (last_large) := i;
      else
        last_small := last_small + 1;
        small (last_small) := i;
      end if;
    end loop;
    --
    while last_small > 0 and then last_large > 0 loop
      --  Take a rich - poor pair
      less := small (last_small);
      last_small := last_small - 1;
      more := large (last_large);
      last_large := last_large - 1;
      --
      aliases.probability (less) := probabilities (less) * k;
      aliases.alias (less) := more;  --  Give from the rich to the poor.
      --  This corresponds to removal from the game of the cubes of
      --  colour "more" used to fill the box "less" (See exercise in Knuth).
      probabilities (more) := probabilities (more) + probabilities (less) - average;
      --
      --  Place again the changed "more" into the appropriate stack:
      if probabilities (more) >= average then
        last_large := last_large + 1;
        large (last_large) := more;
      else
        last_small := last_small + 1;
        small (last_small) := more;
      end if;
    end loop;
    --  Now either the "small" or the "large" stack is empty.
    while last_small > 0 loop
      j := small (last_small);
      aliases.probability (j) := 1.0;
      --  The alias is not used (0 probability), but numerically impossible things happens!
      aliases.alias (j) := j;  --  Just same as non-aliased.
      last_small := last_small - 1;
    end loop;
    while last_large > 0 loop
      j := large (last_large);
      aliases.probability (j) := 1.0;
      --  The alias is not used (0 probability), but numerically impossible things happens!
      aliases.alias (j) := j;  --  Just same as non-aliased.
      last_large := last_large - 1;
    end loop;
  end Prepare_Aliases;

  function Index_Alias_Method (
    U01     : Probability_value;  --  Probability value. For simulation: random, uniform in [0,1]
    aliases : Alias_tables
  )
  return Integer
  is
    n : constant Positive := aliases.alias'Length;
    U0n: constant Real := U01 * Real (n);
    coin : Probability_value;
    j, jb : Integer;
  begin
    j := Integer (Real'Floor (U0n));  --  Random uniform choice
    jb := j + aliases.probability'First;
    if jb > aliases.probability'Last then
      jb := aliases.probability'Last;  --  Very rare, but happens...
    end if;
    --  Another random choice (flip or coin) using the fractional part.
    --  This is why many digits are needed for U01.
    coin := U0n - Real (j);
    if coin <= aliases.probability (jb) then
      return jb;
    else
      return aliases.alias (jb);
    end if;
  end Index_Alias_Method;

  function To_cumulative (p: Probability_array; check: Boolean:= False) return Probability_array
  is
    sum: Probability_value := 0.0;
    Fx: Probability_array(p'Range);
    tol: constant := 1.0e-7;
  begin
    for i in p'Range loop
      Fx(i):= sum;  --  CDF begins with 0.
      sum := sum + p(i);
      if check and then p(i) not in 0.0 .. 1.0 then
        --  This check is redundant if the type Probability_value is aleady a subtype in 0.0 .. 1.0
        raise Constraint_Error with "Probability value not in [0,1]";
      end if;
    end loop;
    if check and then abs(sum-1.0) > tol then
      raise Constraint_Error
        with "Sum of probabilities should be 1, is" & Probability_value'Image(sum);
    end if;
    return Fx;
  end To_cumulative;

  function To_probs (Fx: Probability_array; check: Boolean:= False) return Probability_array
  is
    probabilities : Probability_array (Fx'Range);
  begin
    if check and then Fx(Fx'First) > 0.0 then
      raise Constraint_Error with "First probability of CDF Fx must be 0.0";
    end if;
    for i in Fx'Range loop
      if i < Fx'Last then
        if check and then Fx(i+1) < Fx(i) then
          raise Constraint_Error with "CDF Fx is decreasing";
        end if;
        probabilities(i) := Fx(i+1) - Fx(i);
      else
        probabilities(i) := 1.0 - Fx(i);
      end if;
    end loop;
    return probabilities;
  end To_probs;

end Discrete_Random_Simulation;
