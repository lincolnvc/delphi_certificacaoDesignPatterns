unit State.Model.Item.Inativo;

interface

uses State.Model.Interfaces;

Type
  TModelItemInativo = class(TInterfacedObject, iItemOperacaoes)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iItemOperacaoes;
      function Vender : iItemOperacaoes;
      function Cancelar : iItemOperacaoes;
      function Desconto : iItemOperacaoes;
      function Devolver : iItemOperacaoes;
  end;

implementation

uses
  System.SysUtils;

{ TModelItemInativo }

function TModelItemInativo.Cancelar: iItemOperacaoes;
begin
  Result := Self;
  raise Exception.Create('Este item est� inativo');
end;

constructor TModelItemInativo.Create;
begin

end;

function TModelItemInativo.Desconto: iItemOperacaoes;
begin
  Result := Self;
  raise Exception.Create('Este item est� inativo');
end;

destructor TModelItemInativo.Destroy;
begin

  inherited;
end;

function TModelItemInativo.Devolver: iItemOperacaoes;
begin
  Result := Self;
  raise Exception.Create('Este item est� inativo');
end;

class function TModelItemInativo.New : iItemOperacaoes;
begin
  Result := Self.Create;
end;

function TModelItemInativo.Vender: iItemOperacaoes;
begin
  Result := Self;
  raise Exception.Create('Este item est� inativo');
end;

end.

