# Piggy Game
Godot 3.5.x

A basic game made in Godot, following the course: https://heartbeast-gamedev-school.teachable.com/p/1-bit-godot-course

## Screenshots

## Nodes Used

- Node
  - Node2D
    - Area2D
    - CollisionShape2D
  - AnimationPlayer

## Window

- **Window Height** and **Width**.
- **Test Height** and **Test Width** (what the actual game view will measure).
- **Stretch Mode 2D** to make the world stretch to cover the Test size.

## Input

- Using `Input.is_action_pressed("ui_right")` to react to input.
- Using `delta` to adapt speed to frame duration.

## Scripts

- Export properties using `export (int) var PIG_SPEED = 100`.
- Accessing nodes with `onready var animPlayer = $PigAnimationPlayer`.
- Playing animations with `animPlayer.play("Run")`.
- Flipping H with `sprite.flip_h = isMovingLeft`.

## Scenes

- Extracting branch of main scene into separate scene.

## Animation

- Creating `Idle` and `Run` animations with looping.