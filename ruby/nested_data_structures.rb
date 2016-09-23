school_desks = {
    jans_desk: {
        full_name: 'Jan Gomez',
        seat_in_class: {
            total_seats: 20,
            seat: 11
        },
        pens: [
            "red", 
            "green", 
            "black", 
            "blue"
        ],
        books:[
            "english",
            "bio"
        ]
    },
     bobs_desk: {
        full_name: 'Bob Martinez',
        seat_in_class: {
            total_seats: 20,
            seat: 3
        },
        pens: [
           "black", 
            "blue"
        ],
        books:[
            "math",
            "science"
        ]
        
    },
     joans_desk: {
        full_name: 'Joan Ester',
        seat_in_class: {
            total_seats: 20,
            seat: 19
        },
        pens: [
           "black", 
            "orange",
            "grey",
            "hot pink"
        ],
        books:[
            "spanish",
            "english"
        ]
    }
}
    
#puts school_desks[:bobs_desk][:books][0]
#puts school_desks[:jans_desk][:pens]
#puts school_desks
#puts school_desks[:bobs_desk][:pens][0]
#puts school_desks[:jans_desk][:seat_in_class][:seat]
#puts school_desks[:jans_desk][:pens].push("sparkly purple")