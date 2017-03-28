import LogicKit

let EmptyList : Map = ["first" : Value("nil"),"rest" : Value("nil")]

func append(element: Term, list: Term) -> Map
{
  return ["first" : element, "rest" : list]
}
