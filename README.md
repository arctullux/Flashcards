# Flashcard Study App

## Overview

A simple flashcard application that is made for practice, incorporating the learned (PageView, Container, Padding, Expanded, SafeArea, etc) widgets. 

## Purpose
The purpose of this application is to provide a tool used for studying. Besides being used for practice, it is supposed to reinforce core Flutter concepts by the Developer.
## Collaboration

Collaboration will not be accepted on this project.

## AI Usage
AI was used in the generation of this app's concepts and the assignment, but will not be used in the generation of this code at all.
## Frameworks and Languages
This application is built primarily from the Flutter mobile app development framework. Flutter is based on the Dart programming language.

## Deployment
Since this application is not intended for production, it will only be deployed for download on Github. The application is open source.

### Project Constraints (Remove Before Deployment)
* Main Flashcard Screen
  * Display a card widget in the center of the screen with a question.
  * When a user taps the card (or a button), the text updates to show the answer instead of the question.
  * Use a container with a custom BoxDecoration in its decoration parameter. Rounded corners, subtle shadow, and dynamic background colors (or a sign that the card is flipped) is required.
* Navigation Controls
  * Provide Next/Previous buttons at the bottom to cycle through the list of options.
  * Keep a running count of how many cards are marked correct/incorrect.
* Reset Button
  * Include a button in the AppBar to reset the deck back to the first card and zero out the score.
* Recommended Widgets
  * StatefulWidget
  * GestureDetector / InkWell
  * Card / Container
  * Row and Column
* Suggested Roadmap
  * Make a simple Dart class containing flashcard data.
  * Lay out the screen shell (scaffold, appbar, column) and hardcode a single card in the middle.
  * Add tap functionality using setState() to toggle a bool varible "_isFlipped".
  * Hook Up Navigation storing index ariables and adding logic to stpe forward/backward through the list of cards.