using Godot;
using System;

public partial class Paddle : Node
{
    [Export] float Speed;
    [Export] string UpAction, DownAction;

    public override void _Ready()
    {
    }

    public override void _Process(double delta)
    {

    }
}
