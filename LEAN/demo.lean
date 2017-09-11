def even(n : ℕ) : Prop := ∃ m, n = 2 * m

#check even 10

example : even 10 := ⟨ 5, rfl ⟩


theorem and_commutative (p q : Prop) : p ∧ q → q ∧ p :=
assume hpq : p ∧ q,
have hp : p, from and.left hpq,
have hq : q, from and.right hpq,
show q ∧ p, from and.intro hq hp

#check and_commutative
#print and_commutative


theorem and_commutative' (p q : Prop) : p ∧ q → q ∧ p :=
begin
  intro hp,
  apply and.intro,
  exact and.right hp,
  exact and.left hp,
end

#check and_commutative'
#print and_commutative'

#check prod
#print prod

#check list

universe u 
constant α : Type u 
#check α

#check fun x : nat, x + 5
#check λ x : nat, x + 5


constants (a : α) (b : β)
#reduce (λ x : α, x) a

#eval (λ x : α, x) a

def foo : (ℕ → ℕ) → ℕ := λ f, f 0

#check foo

#check (ℕ → ℕ) → ℕ

#print foo

def curry (α β γ : Type) (f : α × β → γ) : α → β → γ := λ x y, f (x, y)

#check curry
#print curry

#check let y := 2 + 2, z := y + y in z * z
#reduce let y := 2 + 2, z := y + y in z * z

def foo1 := let a := nat in λ x : a, x + 2
#check foo1
/-
def bar := (λ a, λ x : a, x + 2) nat
#check bar
-/




#check curry
#print curry

#check 0 - 1
#reduce 0 + 1
#reduce 0 - 1




