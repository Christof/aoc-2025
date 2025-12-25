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

SplitByLine   ← ⊜∘⊸≠@\n
RemovePadding ← ⍜(⍉|↘¯1↘1) ↘¯1↘1
SumOfAdjacentRolls ← (
  ⍜(⊡ 1_1|⋅@ ) # Set center to space to ignore it
  =@@          # Mark rolls
  /+/+         # Count rolls
)

Part₁ ← (
  SplitByLine
  ⤙=@@  # Create mask with rolls for later
  ⬚@.⧈SumOfAdjacentRolls 3_3
  RemovePadding
  <4 # Accessible by forklifts if there fewer than 4 rolls
  ×  # Apply mask with rolls
  /+/+
)

˙⍤ =13 Part₁ ExampleInput

Part₁ Input
