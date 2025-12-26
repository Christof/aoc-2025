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
  /+/+ # Count rolls
)

Part₁ ← (
  SplitByLine
  ⤙=@@                                 # Create mask with rolls for later
  ⬚@.⧈SumOfAdjacentRolls [3_3 1_1 1_1] # 3x3 window with stride 1x1 and 1x1 padding
  <5                                   # Accessible by forkliftsif there fewer than 4 rolls (+1 for center piece)
  ×                                    # Apply mask with rolls
  /+/+
)

˙⍤ =13 Part₁ ExampleInput

Part₁ Input
