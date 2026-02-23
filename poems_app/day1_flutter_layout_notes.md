# Day 1 – Understanding Flutter Layouts (Core Concepts)

Today I studied the basic layout system in Flutter and understood how UI elements are arranged on the screen. Below are my notes based on what I learned.



## 1. Flutter Layout System – Basic Idea

Flutter follows a constraint-based layout system:

* Parent gives constraints (size limits).
* Child decides its size within those constraints.
* Parent positions the child.

In Flutter, everything is a widget. Even layout elements like Column, Row, and Container are widgets.

Understanding this structure is important before building UI.

## 2. Main Axis and Cross Axis

Before using Column and Row, understanding axis is very important.

If using **Column**:

* Main Axis → Vertical
* Cross Axis → Horizontal

If using **Row**:

* Main Axis → Horizontal
* Cross Axis → Vertical

Alignment properties work according to these axes.



## 3. Column

Column is used to arrange widgets vertically (top to bottom).

Important properties:

### mainAxisAlignment

Controls spacing along the main axis (vertical in Column).

Values:

* start
* end
* center
* spaceBetween
* spaceAround
* spaceEvenly

### crossAxisAlignment

Controls alignment along cross axis (horizontal in Column).

Values:

* start
* end
* center
* stretch

### mainAxisSize

* max → Takes full available height
* min → Takes only required height

Column is commonly used in forms, login screens, and vertical layouts.



## 4. Row

Row arranges widgets horizontally (left to right).

It has the same properties as Column:

* mainAxisAlignment
* crossAxisAlignment
* mainAxisSize

Common use cases:

* Icon and Text together
* Buttons placed side by side
* Horizontal menus



## 5. Container

Container is one of the most flexible layout widgets.

It is used for:

* Setting height and width
* Adding padding
* Adding margin
* Background color
* Border
* Border radius
* Box shadow
* Alignment

Decoration is handled using BoxDecoration.

Container is commonly used for styling and spacing.



## 6. Padding

Padding adds space inside a widget.

It creates space between the content and its border.

Used when we want internal spacing.



## 7. Margin

Margin adds space outside a widget.

In Flutter, margin is usually applied using Container.

It creates spacing between widgets.



## 8. SizedBox

SizedBox is used to:

* Add fixed vertical or horizontal space
* Give fixed width or height to a widget

Example use:
Adding space between two widgets in a Column.



## 9. Center

Center places its child exactly in the center of the available space.

Useful when displaying a single widget in the middle of the screen.



## 10. Align

Align positions a widget inside its parent using alignment property.

Examples:

* Alignment.topLeft
* Alignment.center
* Alignment.bottomRight

It provides more positioning control than Center.


## 11. Expanded

Expanded is used inside Row or Column.

It makes a widget take the remaining available space.

Useful when dividing space proportionally between widgets.



## 12. Flexible

Flexible is similar to Expanded.

Difference:

* Expanded forces the widget to fill available space.
* Flexible allows the widget to adjust within available space.

Used when flexible sizing is needed.



## 13. Stack

Stack is used to place widgets on top of each other (overlapping).

Important point:
The last child in Stack appears on top (z-direction order).

Common example:

* Background image
* Text placed on top of the image



## 14. Positioned

Positioned is used inside Stack.

It allows placing a widget using:

* top
* bottom
* left
* right

Used when exact placement is required.



## 15. Scaffold

Scaffold provides the basic structure of a screen.

It includes:

* AppBar
* Body
* Drawer
* FloatingActionButton
* Bottom navigation elements

It acts as the main layout structure of a page.


## 16. AppBar

AppBar is the top bar of the screen.

It can contain:

* Title
* Leading icon
* Action buttons
* Background color

It is placed inside Scaffold.

## 17. Drawer (Side Menu)

Drawer is used to create a side navigation menu.

It is added inside Scaffold.

It usually contains:

* Profile section
* List of options
* Settings
* Logout option

Drawer slides from the left side of the screen.



## 18. Basic Navigation

Flutter uses the Navigator class to move between screens.

Two main methods:

* push → Opens a new screen
* pop → Returns to the previous screen

Navigation is important for building multi-screen applications like:
Login → Home → Profile.

It helps manage screen flow.

# Conclusion

Today I understood:

* How Column and Row work with main axis and cross axis.
* How spacing and alignment are controlled.
* How Container helps with styling.
* How Stack allows overlapping layouts.
* How Scaffold structures a screen.
* How Drawer and Navigation are used in basic app structure.

These are the fundamental layout concepts required to start building UI in Flutter.

