import React from 'react';
import { StyleSheet, Text, View} from 'react-native';
import { MaterialIcons } from '@expo/vector-icons';
import { globalStyles } from '../styles/global';

export default function Header({ navigation, title }) {

    const openMenu = () => {
        navigation.openDrawer();
    }

    return (
        <View style={globalStyles.header}>
            <MaterialIcons name='menu' size={28} onPress={openMenu} style={globalStyles.icon}/>
            <View>
                <Text style={globalStyles.headerText}>{title}</Text>
            </View>
        </View>
    );
}

