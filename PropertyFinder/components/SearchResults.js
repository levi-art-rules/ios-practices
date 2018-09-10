import React from 'react';
import {
  Image,
  View,
  TouchableHighlight,
  FlatList,
  Text,
} from 'react-native';

import ListItem from './ListItem';

export default class SearchResults extends React.Component {
  _keyExtractor = (item, index) => index;

  _renderItem = ({item, index}) => {
    return (
      <ListItem
        item={item}
        index={index}
        onPressItem={this._onPressItem}
      />
    );
  };

  render() {
    return (
      <FlatList
        data={this.props.listings}
        keyExtractor={this._keyExtractor}
        renderItem={this._renderItem}
      />
    );
  }
}