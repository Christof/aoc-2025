ExampleInput ← "123 328  51 64 \n 45 64  387 23 \n  6 98  215 314\n*   +   *   +  "

Input ← &fras "day6.txt"

Part₁ ← (
  ⊜(⊜□ ⊸≠@ ) ⊸≠@\n            # Split by line and by space in row
  ⍉⇌                          # Reverse and transpose -> operation is the first element in each row
  /+≡(⨬(/+|/×)⊃(⊢°□=@*⊢|⋕↘1)) # Get operation and numbers and resolve them
)

˙⍤=4277556 Part₁ ExampleInput

Part₁ Input

Part₂ ← (
  ≡⊜□¬⊸⦷˜↯" " ⊸⧻⊜∘ ⊸≠@\n
  ⍉⇌
  ≡(
    ⊃(⊢°□=@*⊢
    | ↘1
      ⟜(⊂1/↥≡(⧻°□))    # max character length
      ⋕⍉⇌≡⌟(⊢⬚@ ˜↯ °□) # fill with 0 and parse
    )
    ⨬(/+|/×)
  )
  /+
)

˙⍤=3263827 Part₂ ExampleInput

Part₂ Input
