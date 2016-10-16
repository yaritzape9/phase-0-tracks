school = {
    classroom_1: {
        room_info_1: {
            room_num: 123,
            class_taught: "Math",
            num_of_kids: 23
        },
        teacher_info: {
            gender: "male",
            age: 26,
            name: "Mike"       
         }

    },

    classroom_2: {
        room_info_2: {
            room_num: 324,
            class_taught: "English",
            num_of_kids: 26
        },
        teacher_info: {
            gender: "Female",
            age: 24,
            name: "Rebecca"       
         }

    },

    classroom_3:{
        room_info_3: {
            room_num: 100,
            class_taught: "PE",
            num_of_kids: 27
        },
        teacher_info: {
            gender: "Female",
            age: 29,
            name: "Loral"     
         }

    },

    classroom_4: {
        room_info_4: {
            room_num: 237,
            class_taught: "Science",
            num_of_kids: 30
        },
        teacher_info: {
            gender: "Male",
            age: 23,
            name: "Sam"      
         }

    },    
}

p school

p school[:classroom_1][:room_info_1]

p school[:classroom_3][:teacher_info][:age]= 30

p school[:classroom_4]

p school[:classroom_4][:room_info_4].inspect

p school[:classroom_2][:room_info_2]

p school[:classroom_1][:teacher_info][:class_taught]

p school[]