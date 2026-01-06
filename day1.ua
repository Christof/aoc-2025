ExampleInput ← $ L68
               $ L30
               $ R48
               $ L5
               $ R60
               $ L55
               $ L1
               $ L99
               $ R14
               $ L82

Input ← &fras "day1.txt"

RemoveR   ← ▽ ⊸≠@R
ReplaceL  ← ⍜▽(@-◌) ⊸=@L
Rotations ← ⊂50 ⊜(⋕ ReplaceL RemoveR) ⊸≠@\n

Part₁ ← /+ = 0 \(◿100+) Rotations

˙⍤=3 Part₁ ExampleInput
Part₁ Input
