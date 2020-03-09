accessing
main: ignored
    | ar |
    ar := #($A 3 'abc').
    ar do: [:each | Transcript crShow: each ].
