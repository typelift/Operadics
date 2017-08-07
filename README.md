# Operadics
Standard Operators for the working Swift Librarian.

Operators
---------

Operadics introduces the following operators at global scope

Operator | Name           | Recommended Type
-------- | -------------- | ------------------------------------------
`•`      | compose        | `•     <A, B, C>(B -> C, A -> B) -> A -> C`
`§`      | apply          | `§     <A, B>(A -> B, A) -> B`
`<\|`    | apply          | `<\|    <A, B>(A -> B, A) -> B`
`\|>`    | thrush         | `\|>    <A, B>(A, A -> B) -> B`
`<-`     | extract        | `<-    <A>(M<A>, A) -> Void`
`\|*\|`  | on             | `\|*\|   <A, B, C>((B, B) -> C, A -> B) -> A -> A -> C`
`<>`     | op             | `<>    <A : Monoid>(A, A) -> A`
`<^`     | replace        | `<^    <A, B>(A, F<B>) -> F<A>`
`^>`     | replace        | `^>    <A, B>(F<A>, B) -> F<B>`
`<^>`    | fmap           | `<^>   <A, B>(A -> B, F<A>) -> F<B>`
`<^^>`   | imap           | `<^^>  <I, J, A>(I -> J, F<I, A>) -> F<J, A>`
`<!>`    | contramap      | `<^>   <I, J, A>(J -> I, F<I, A>) -> F<J, A>`
`<*>`    | apply          | `<*>   <A, B>(F<A -> B>, F<A>) -> F<B>`
`>>-`    | bind           | `>>-   <A, B>(F<A>, A -> F<B>) -> F<B>`
`-<<`    | bind           | `-<<   <A, B>(A -> F<B>, F<A>) -> F<B>`
`>>->>`  | Kleisli        | `>>->> <A, B, C>(A -> F<B>, B -> F<C>) -> A -> F<C>`
`<<-<<`  | Kleisli        | `<<-<< <A, B, C>(B -> F<C>, A -> F<B>) -> A -> F<C>`
`->>`    | extend         | `->>   <A, B>(F<A>, F<A> -> B) -> F<B>`
`<<<`    | r-t-l compose  | `<<<   <C, A, B, C>(C<B, C>, C<A, B>) -> C<A, C>` 
`>>>`    | l-t-r compose  | `>>>   <C, A, B, C>(C<A, B>, C<B, C>) -> C<A, C>` 
`&&&`    | split          | `&&&   <A, B, C, D>(A<B, C>, A<B, D>) -> A<B, (C, D)>` 
`***`    | fanout         | `***   <A, B, C, D, E>(A<B, C>, A<D, E>) -> A<(B, D), (C, E)>` 
`+++`    | splat          | `+++   <A, B, C, D, E>(A<B, C>, A<D, E>) -> A<Either<D, B>, Either<C, E>>`
`\|\|\|` | fanin          | `\|\|\|   <A, B, C, D, E>(A<B, D>, A<C, D>) -> A<Either<B, C>, D>`
`<+>`    | op             | `<+>   <A, B, C>(A<B, C>, A<B, C>) -> A<B, C>`
`<?`     | retrieve       | `<?    <A : JSONDecodable>(JSONValue, JSONKeypath) -> A?` 
`<??`    | opt retrieve   | `<??   <A : JSONDecodable>(JSONValue, JSONKeypath) -> A??` 
`<!`     | force retrieve | `<!    <A : JSONDecodable>(JSONValue, JSONKeypath) -> A` 
`∪`      | union          | `∪     <A>(Set<A>, Set<A>) -> Set<A>`
`∩`      | intersect      | `∩     <A>(Set<A>, Set<A>) -> Set<A>`
