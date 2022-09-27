unit Menus.Controller.ListBox.Facade;

interface

uses Menus.Controller.ListBox.Interfaces, Menus.Controller.ListBox.Itens.Factory,
  Menus.Controller.ListBox.Factory;

Type
  TControllerMenusFacade = class(TInterfacedObject, iControllerMenusFacade)
  private
    FListBox : iControllerListBoxFactory;
    FListBoxItem : iControllerListBoxItensFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerMenusFacade;
    function ListBox: iControllerListBoxFactory;
    function ListBoxItem: iControllerListBoxItensFactory;
  end;

implementation

{ TControllerMenusFacade }

constructor TControllerMenusFacade.Create;
begin

end;

destructor TControllerMenusFacade.Destroy;
begin

  inherited;
end;

function TControllerMenusFacade.ListBox: iControllerListBoxFactory;
begin
  FListBox := TControllerListBoxFactory.New;
  Result := FListBox;
end;

function TControllerMenusFacade.ListBoxItem: iControllerListBoxItensFactory;
begin
  FListBoxItem := TControllerListBoxItensFactory.New;
  Result := FListBoxItem;
end;

class function TControllerMenusFacade.New: iControllerMenusFacade;
begin
  Result := Self.Create;
end;

end.
