elementary_school = {
    first_grade: {
        name: 'First Grade',
        class_info: {
            total_students: 22,
            total_teachers: 2,
            total_subs: 1,
            class_pets: 1
        },
        classroom_items: [
            "Hamster cage", 
            "Clocks",
            "Crayons",
            "Alphabet chart"
        ]
    },
    second_grade: {
        name: 'Second Grade',
        class_info: {
            total_students: 20,
            total_teachers: 1,
            total_subs: 1,
            class_pets: 2
        },
        classroom_items: [
            "Fish tank", 
            "Snake cage",
            "Fraction cards",
            "Markers"
        ]
    },
    third_grade: {
        name: 'Third Grade',
        class_info: {
            total_students: 25,
            total_teachers: 1,
            total_subs: 2,
            class_pets: 1
        },
        classroom_items: [
            "Math book", 
            "Bunny cage",
            "Globe",
            "Reading book"
        ]
    }
}


puts elementary_school[:first_grade][:classroom_items]
puts elementary_school[:second_grade][:classroom_items][0]
puts elementary_school[:third_grade][:classroom_items].reverse 
puts elementary_school[:third_grade][:name]
puts elementary_school[:second_grade][:class_info][:class_pets]
puts elementary_school[:first_grade][:class_info][:total_students]