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
  =@@  # Mark rolls
  /+/+ # Count rolls
)

Part₁ ← (
  SplitByLine
  ⤙=@@  # Create mask with rolls for later
  ⬚@.⧈SumOfAdjacentRolls 3_3
  RemovePadding
  <5 # Accessible by forklifts if there fewer than 4 rolls (+1 for center piece)
  ×  # Apply mask with rolls
  /+/+
)

˙⍤ =13 Part₁ ExampleInput

Part₁ Input
