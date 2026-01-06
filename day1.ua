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

RemoveR       ← ▽ ⊸≠@R
ReplaceL      ← ⍜▽(@-◌) ⊸=@L
Rotations     ← ⊂50 ⊜(⋕ ReplaceL RemoveR) ⊸≠@\n
LandingOnZero ← =0 \(◿100+)

Part₁ ← /+ LandingOnZero Rotations

˙⍤=3 Part₁ ExampleInput
Part₁ Input

Part₂ ← (
  ⊜(⊓(-1×2⨂"LR")⋕°⊂)⊸≠@\n # Parse LR to -1 +1 and rotations
  ˜▽                      # Convert rotations into -1 or +1 rotations
  ⊂50                     # add start position
  LandingOnZero           # use logic from part one
  /+
)

˙⍤=6 Part₂ ExampleInput
Part₂ Input
