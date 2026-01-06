ExampleInput ← "11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124"

Input ← ▽⊸≠@\n &fras "day2.txt"

IsInvalid ← (
  ⊸◿2⊸⧻°⋕       # convert to string, switch on length mod 2
  ⨬(/↧=⊃(↙|↘)÷2 # if even check for invalid
  | 0           # if odd it is always valid
  )
)
˙⍤IsInvalid 11
˙⍤IsInvalid 2222
˙⍤IsInvalid 99
˙⍤=0 IsInvalid 12
˙⍤=0 IsInvalid 123

Range ← +⟜(⇡+1-)⊃(⊢|⊣)

Part₁ ← (
  ⊜(⊜⋕⊸≠@-)⊸≠@,
  ≡(/+▽ ⊸≡IsInvalid Range)
  /+
)

˙⍤=1227775554 Part₁ ExampleInput
Part₁ Input
