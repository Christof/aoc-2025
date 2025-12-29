ExampleInput ← $ 3-5
               $ 10-14
               $ 16-20
               $ 12-18
               $ 
               $ 1
               $ 5
               $ 8
               $ 11
               $ 17
               $ 32

Input ← &fras "day5.txt"

SplitByLine ← ⊜□⊸≠@\n

Part₁ ← (
  ⊚⊸⌕ "\n\n"                  # Get index of empty line
  ⊃(⊜(⊜⋕⊸≠@-)⊸≠@\n↙|⊜⋕⊸≠@\n↘) # Parse fresh ingredient ranges and ingredients
  ≡⌟(×⊃(≥⊢|≤⊣))               # Check ingredient is fresh
  /+/↥                        # Count fresh ingredients
)

˙⍤=3 Part₁ ExampleInput

Part₁ Input
