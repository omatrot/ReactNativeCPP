/**
 * @flow
 */

import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View
} from 'react-native';

export default class ReactNativeCPP extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>
          React Native C++
        </Text>
        <Text style={styles.content}>
          Home
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
  title: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  content: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
