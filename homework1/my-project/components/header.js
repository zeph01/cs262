import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

export default function Header() {
  return (
    <View style={styles.header}>
      <Text style={styles.title}>My Todos</Text>
    </View>
  )
}
const styles=StyleSheet.create({
  header:{
    height: 80,
    paddingTop: 8,
    backgroundColor: 'coral'
  },
  title:{
    textAlign:'center',
    paddingTop: 20,
    color: '#fff',
    fontSize: 20,
    fontWeight:'bold',
  }
});
