import React from 'react';
import { StyleSheet, Text, View, NavigatorIOS } from 'react-native';
import SearchPage from './components/SearchPage';

export default class App extends React.Component {
  render() {
    return (
      <NavigatorIOS 
        style={styles.container}
        initialRoute={{
          title: 'Property Finder',
          component: SearchPage
        }}
      />
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1
  },
});
