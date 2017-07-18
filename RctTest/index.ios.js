/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
    TouchableHighlight,
    NativeModules,
} from 'react-native';

export default class RctTest extends Component {
  constructor(props){
    super(props)
    this.state={
      content:1,
    }
  }
  test(){
    this.setState({
      content:this.state.content+1,
    })
  }
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit index.ios.js
        </Text>
        <TouchableHighlight onPress={this.test.bind(this)}>
          <Text style={styles.instructions}>
            click here
          </Text>
        </TouchableHighlight>
        <Text style={styles.instructions}>
          {this.state.content}
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('RctTest', () => RctTest);
