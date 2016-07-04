### Header Example of L20n FTL Files ###
# Sample comment - Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.


sample-key-value = Value for the key.
# Block comment - Lorem ipsum dolor sit amet, consectetur adipisicing elit,
# sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,


html-attributes = HTML Content.
 [html/title] Value for HTML `title` attribute.


interpolations-with-values-and-lists = { PLURAL($counter) ->
  [0] No results.
  [1] We found { $counter } fesult.
 *[other] We found <strong>{ $counter }</strong> results
 }


get-value-from-lists = { $dynamic-value } { $key ->
   [pl]
  *[other] This value is base on the `key` selection { get-value-from-list[$key] }
}


# Code example from L20n maual.
liked-photo = { LEN($people) ->
  [1]     { $people } likes
  [2]     { $people } like
  [3]     { TAKE(2, $people), "one more person" } like
 *[other] { TAKE(2, $people),
            "{ LEN( DROP(2, $people)) ->
                [1]    one more person like
               *[other]  { LEN(DROP(2, $people)) } more people like
             }"
          }
} your photo.


# Something outside of L20n lexical scope, but very helpful.
<<<<<<<< HEAD
  Conflicts at files merging stage.
>>>>>>> master
