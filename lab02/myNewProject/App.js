import { StatusBar } from 'expo-status-bar';
import React, {useState} from 'react';
import { StyleSheet, Text, View, TextInput, FlatList, Button} from 'react-native';

export default function App() {
  const [count,setCount] = useState(1);
  const [name, setName] = useState('John Doe');
  const [age, setAge] = useState(0);
  const [birthdays, setBirthdays] = useState([]);
  const click = () => {
    setCount(count+1)
    setAge(age+1)
    setBirthdays(
      birthdays.concat({key:count.toString()})
    );
  }

  return (
    <View style={styles.container}>
      <Text>Enter name: </Text>
      <TextInput   
        style={styles.input}
        placeholder='eg. John Doe'
        onChangeText={(val) => setName(val)}/>
            
      <Button title='birthday' onPress={click}/>
      <Text style={styles.item}>{name} is {age} years old.</Text>
      <FlatList
        data={birthdays}
        renderItem={({ item }) => (
          <Text style={styles.item}>{item.key}</Text>
        )}
      />
      
      <StatusBar style="auto" />
    
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    paddingTop: 40,
    paddingHorizontal: 20,
    alignItems: 'center',
    justifyContent: 'center',
  },
  item:{
    marginTop:5,
    fontSize:12,
    marginHorizontal:100 ,
  },
  input: {
   borderWidth: 1,
   borderColor: '#777',
   padding: 8,
   margin: 10,
   width:200,
  }
});
