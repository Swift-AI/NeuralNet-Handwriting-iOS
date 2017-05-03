# Handwriting Example - NeuralNet
A handwriting recognition example for iOS using [NeuralNet](https://github.com/Swift-AI/NeuralNet).

Note: this application is part of the Swift AI project. Full details about the library can be found in the [main repo](https://github.com/Swift-AI/Swift-AI).

Preview:

![preview](https://github.com/Swift-AI/NeuralNet-Handwriting-iOS/blob/master/preview.gif)

## About

This simple iOS app demonstrates real-world usage of [NeuralNet](https://github.com/Swift-AI/NeuralNet). The app comes packaged with a pre-trained neural network that was trained using [NeuralNet-MNIST](https://github.com/Swift-AI/NeuralNet-MNIST).

The [MNIST](http://yann.lecun.com/exdb/mnist/) dataset was used for this example.

## Installation

Just clone or download this repository and run the app! All dependencies are included.

## Usage

Sketch a digit from 0 to 9 on the canvas. The neural network will attempt to classify the image.

The neural network's input will be displayed in the bottom left - this is a scaled-down 28x28 version of your drawing. The network's output will be displayed in the bottom right, along with its confidence.


