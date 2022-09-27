unit Iterator.Model.Itens.Iterator;

interface

uses Iterator.Model.Interfaces, System.Generics.Collections;

Type
  TModelItensIterator = class(TInterfacedObject, iIteratorItens)
  private
    FLista : TList<iItens>;
    FCount : Integer;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iIteratorItens;
    function hasNext: boolean;
    function Next: iItens;
    function AddList(Value: TList<iItens>): iIteratorItens;
  end;

implementation

{ TModelItensIterator }

function TModelItensIterator.AddList(Value: TList<iItens>): iIteratorItens;
begin
  Result := Self;
  FLista := Value;
  FCount := 0;
end;

constructor TModelItensIterator.Create;
begin
  FCount := 0;
end;

destructor TModelItensIterator.Destroy;
begin

  inherited;
end;

function TModelItensIterator.hasNext: boolean;
begin
  Result := not (FCount = FLista.Count);
end;

class function TModelItensIterator.New: iIteratorItens;
begin
  Result := Self.Create;
end;

function TModelItensIterator.Next: iItens;
begin
  Result := FLista[FCount];
  Inc(FCount);
end;

end.
