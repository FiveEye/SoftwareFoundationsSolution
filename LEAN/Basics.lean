inductive day : Type 
| monday : day
| tuesday : day
| wednesday : day
| thursday : day
| friday : day
| saturday : day
| sunday : day


def next_weekday : day → day
| day.monday    := day.tuesday
| day.tuesday   := day.wednesday
| day.wednesday := day.thursday
| day.thursday  := day.friday
| day.friday    := day.monday
| day.saturday  := day.monday
| day.sunday    := day.monday

#eval (next_weekday day.friday)

#eval (next_weekday (next_weekday day.saturday))

#check (next_weekday (next_weekday day.saturday))

def even(n : ℕ) : Prop := ∃ m, n = 2 * m

#check even 10

example : even 10 := ⟨ 5, rfl ⟩

theorem and_commutative (p q : Prop) : p ∧ q → q ∧ p :=
assume

/-
def test_next_weekday : Prop := (next_weekday (next_weekday day.saturday)) = day.tuesday

#check test_next_weekday

theorem test_next_weekday' : (next_weekday (next_weekday day.saturday)) = day.tuesday :=

 
example : test_next_weekday := ⟨ day.tuesday, rfl ⟩ 
-/
