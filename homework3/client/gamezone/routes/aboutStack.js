import React from 'react';
import {createStackNavigator} from '@react-navigation/stack';

import Header from '../shared/header';
import About from '../screens/about';

const Stack = createStackNavigator();

export default function AboutStack( {navigation} ) {
    return (
        <Stack.Navigator screenOptions={{
            headerStyle:{backgroundColor:'#ddd'}
        }}>
            <Stack.Screen
                name="About"
                title="About"
                component={About}
                options={{
                    headerLeft: () =>  <Header navigation={navigation} />
                }}
            />
        </Stack.Navigator>
    );
};