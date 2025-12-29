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

Ranges ← ⊜(⊜⋕⊸≠@-)⊸≠@\n

Part₁ ← (
  ⊚⊸⌕ "\n\n"          # Get index of empty line
  ⊃(Ranges↙|⊜⋕⊸≠@\n↘) # Parse fresh ingredient ranges and ingredients
  ≡⌟(×⊃(≥⊢|≤⊣))       # Check ingredient is fresh
  /+/↥                # Count fresh ingredients
)

˙⍤=3 Part₁ ExampleInput

Part₁ Input

Part₂ ← (
  ⊚⊸⌕ "\n\n"      # Get index of empty line
  Ranges↙         # Parse fresh ingredient ranges
  ≡(+⊙⊢□⇡+1-⊸⊃⊢⊣) # Create fresh ingredient IDs
  ⧻◴°□/⍚⊂         # Combine ID ranges and count unique
)

˙⍤=14 Part₂ ExampleInput

Part₂ Input
