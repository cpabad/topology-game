import Game.Metadata

open Set

variable {X : Type} {U V : Set X}

World "Warmup"
Level 1

Title "Name what you have"

Introduction "
If you already know that `U` is contained in `V`, you can say so. That is all this level asks.

The real work here is on the right: the **inventory**. Every theorem listed there is one you met in the Set Theory Game. They are yours to use from now on; you will not be asked to prove them again.

To finish a level you close every goal. When the goal is *exactly* one of your hypotheses, the tactic `exact` closes it: `exact h` says \"the goal is `h`\".
"

/-- If $U \subseteq V$, then $U \subseteq V$. -/
Statement (hUV : U ⊆ V) : U ⊆ V := by
  exact hUV

Conclusion "
That is the whole move: recognise that what you need is already in your hands, and name it. Most levels in this game end by naming something you already have.
"

/- Inventory issued at this level. -/

NewTactic exact
NewTheorem Set.Subset.refl Set.Subset.trans Set.Subset.antisymm Set.mem_inter_iff Set.mem_union Set.mem_sUnion Set.inter_comm Set.empty_subset Set.sUnion_empty Set.mem_insert_iff Set.mem_singleton_iff Set.ext_iff Set.mem_univ
