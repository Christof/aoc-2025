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

# Part₁ Input

Part₂ ← (
  ⊚⊸⌕ "\n\n"      # Get index of empty line
  Ranges↙         # Parse fresh ingredient ranges
  ≡(+⊙⊢□⇡+1-⊸⊃⊢⊣) # Create fresh ingredient IDs
  ⧻◇◴/⍚⊂          # Combine ID ranges and count unique
)

˙⍤=14 Part₂ ExampleInput

EnsureEvenRows ← ⨬(∘|⊂ ⊸⊢)⊸(◿2⧻)
Combine₂       ← □⨬(∘|[⊟⊃(⊢|/↥↘1)⊡ [0_0 0_1 1_1]]) ⊸(≤⊃⊢⊣⊡ [0_1 1_0])
CombineRanges  ← °□⊢/⍚⊂⧈(Combine₂) [2_2 2_2 0_0] EnsureEvenRows⍆

˙⍤≍[1_7 15_20] CombineRanges [1_7 15_20] # none overlapping ranges
˙⍤≍[12_20] CombineRanges [12_17 15_20]   # overlapping ranges
˙⍤≍[10_20] CombineRanges [10_20 12_17]   # one range inside the other
˙⍤≍[1_12 10_20] CombineRanges [1_12 10_20 12_17]

# Part₂ Input # Doesn't work because of too large numbers

Part₂₁ ← (
  ⊚⊸⌕ "\n\n"
  Ranges↙
  ⍥CombineRanges ∞
  ≡/-
  +1
  /+
)

˙⍤=14 Part₂₁ ExampleInput

Part₂₁ Input
