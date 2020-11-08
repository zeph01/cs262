import React, { useEffect, useState } from 'react';
import { ActivityIndicator, StyleSheet, View, Text, TouchableOpacity, FlatList } from 'react-native';
import { globalStyles } from '../styles/global';
import Card from '../shared/card';

export default function Home({ navigation }) {
    const [isLoading, setLoading] = useState(true);
    const [data, setData] = useState([]);
  
    useEffect(() => {
      fetch('https://dry-forest-85797.herokuapp.com/game1')
          .then((response) => response.json())
          .then((json) => setData(json))
          .catch((error) => console.error(error))
          .finally(() => setLoading(false));
    }, []);

    return (
        <View style={globalStyles.container}>
            <Text style={{alignSelf: 'center'}}>Game1 Players</Text>
            <Text style={{alignSelf: 'center'}}>(Click on each player for details)</Text>
            <FlatList data={data} renderItem={({ item }) => (
                <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
                    <Card>
                        <Text style={globalStyles.titleText}>{item.name}</Text>
                    </Card>
                </TouchableOpacity>
            )} />
        </View>
    );
}
