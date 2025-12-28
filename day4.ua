# Experimental!
ExampleInput ← $ ..@@.@@@@.
               $ @@@.@.@.@@
               $ @@@@@.@.@@
               $ @.@@@@..@.
               $ @@.@@@@.@@
               $ .@@@@@@@.@
               $ .@.@.@.@@@
               $ @.@@@.@@@@
               $ .@@@@@@@@.
               $ @.@.@@@.@.

Input ← &fras "day4.txt"

SplitByLine ← ⊜∘⊸≠@\n

SumOfAdjacentRolls ← (
  =@@  # Mark rolls
  ⧻⊚   # Count rolls
)

AccessibilityMask ← (
  ⤙=@@                                 # Create mask with rolls for later
  ⬚@.⧈SumOfAdjacentRolls [3_3 1_1 1_1] # 3x3 window with stride 1x1 and 1x1 padding
  <5                                   # Accessible by forklifts if there fewer than 4 rolls (+1 for center piece)
  ×                                    # Apply mask with rolls
)

Part₁ ← (
  SplitByLine
  AccessibilityMask
  ⧻⊚
)

˙⍤ =13 Part₁ ExampleInput

Part₁ Input

Part₂ ← (
  SplitByLine
  # Fix point iteartion by replacing all 1 in AccessibilityMask with x
  ⊸⍥(⍜♭(⍜▽(⋅@x)) ⊙♭⊸AccessibilityMask) ∞
  # Count rolls in input and after they have been removed
  ∩(⧻⊚=@@)
  # Difference tells us how many have been removed
  -
)

˙⍤ =43 Part₂ ExampleInput

⍜now(Part₂ Input)
