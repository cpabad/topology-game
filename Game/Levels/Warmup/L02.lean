import Game.Metadata

open Set

variable {X : Type} {U : Set X}

World "Warmup"
Level 2

Title "Name what you have pt 2"

Introduction "
Here should be another easy one. You could solve using intro, but there could be a one-line proof that you can use since this proof was solved in Set Theory Game.
"

/-- Prove $U \subseteq U$. -/
Statement : U ⊆ U := by
  Hint (hidden := true) "You already have access to Set.Subset.refl. How can you use that theorem to solve this level in one-line."
  intro x hx
  exact hx

Conclusion "
Were you able to solve this in one line?
"

/- Inventory issued at this level. -/

NewTactic intro
/-- When you see ⊆ in a goal, try using intro x hx. When you see ⊆ in an assumption (i.e., h : A ⊆ B), try to get another assumption to have the form hx : x ∈ A so that you can apply h at hx to get hx : x ∈ B -/
DefinitionDoc Set.Subset as "⊆"
NewDefinition Set.Subset
