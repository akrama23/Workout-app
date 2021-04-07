
User.destroy_all
Favorite.destroy_all
Workout.destroy_all
TargetMuscle.destroy_all
Muscle.destroy_all


user1 = User.create(first_name:"Akram", last_name: "Alam", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png", email: "akram@akram.com", password: "1234")


workout1 = Workout.create(name: "Bench press", description:"The bench press is an upper-body weight training exercise in which the trainee presses a weight upwards while lying on a weight training bench." ,image:"https://fabiofiorio.files.wordpress.com/2015/09/bench-press.png", video:"https://youtu.be/SCVCLChPQFY")
workout2 = Workout.create(name: "Back Squat", description:"The back squat is a lower vody exercise, the bar is loaded at the top of your traps, near the base of your neck. Then you simply squat down, bending at the knees and hips, working to not let your knees track too far in front of your feet." ,image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Squats.svg/660px-Squats.svg.png", video:"https://youtu.be/QmZAiBqPvZw")
workout3 = Workout.create(name: "Power Clean", description:"In Power Clean, barbell is lifted from floor to shoulders. The lift is complete when feet are in line and bar is under control." ,image:"https://www.menshealth.com.au/media/9165/hang_power_clean-01-1.jpg?width=720&center=0.0,0.0" , video:"https://youtu.be/KwYJTpQ_x5A")
workout4 = Workout.create(name: "Deadlift", description:"The deadlift is a weight training exercise in which a loaded barbell or bar is lifted off the ground to the level of the hips, torso perpendicular to the floor, before being placed back on the ground." ,image:"https://thegyminmissionhills.com/wp-content/uploads/2017/06/Deadlift-Men.jpg", video:"https://youtu.be/op9kVnSso6Q")
workout5 = Workout.create(name: "Lat Pulldown", description:"The lat pulldown is a fantastic exercise to strengthen the latissimus dorsi muscle, the broadest muscle in your back, which promotes good postures and spinal stability. Form is crucial when performing a lat pulldown to prevent injury and reap the best results." ,image:"https://i2.wp.com/boomermuscle.com/wp-content/uploads/2016/12/nab_lat_pulldown.jpg?ssl=1", video:"https://youtu.be/an1BMInTXLk")
workout6 = Workout.create(name: "Shoulder Press", description:"A shoulder press is any pressing movement primarily targeting the shoulders. Its where you press barbell up from your chest, strightening your arms." ,image:"https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/gallery/31694/mitary-press-shoulder-workout-28072011__resized.jpg?resize=480:*" , video:"https://youtu.be/5yWaNOvgFCM")
workout7 = Workout.create(name: "Barbell Row", description:"The Barbell Row, or Barbell Bent-Over Row, is a strength exercise that works the back muscles. It's a challenging lift to perform, but it's one of the most effective exercises for building back strength and size if done correctly." ,image:"https://global-uploads.webflow.com/5d1d0d3f53ced35a29dbe169/5eecfe5a263e085d31855d1f_barbell-row-exercise-anabolic-aliens.png" , video:"https://youtu.be/DAKGiwO9Gj0")
workout8 = Workout.create(name: "Leg Press", description:"The leg press is a compound weight training exercise in which the individual pushes a weight or resistance away from them using their legs." ,image:"https://i.pinimg.com/originals/2f/32/10/2f3210efacf19da366392c071cae4da0.jpg" , video:"https://youtu.be/4PYXEYqgCqk")
workout9 = Workout.create(name: "Leg Extension", description:"The leg extension is a resistance weight training exercise that targets the quadriceps muscle in the legs. The exercise is done using a machine called the Leg Extension Machine." ,image:"https://i.pinimg.com/originals/cb/04/6c/cb046cea1dacb2badbd9912b7c83d02c.jpg" , video:"https://youtu.be/8Jqof7z3QYM")
workout10 = Workout.create(name: "Bicep Curls", description:"The Bicep Curl is an essential strength training exercise you can do with dumbbells, a barbell, resistance bands or a cable machine to build strength in the upper arms." ,image:"https://lh3.googleusercontent.com/proxy/T2Vp9koW-HgweyEJnc3sxLLkKFyFzFNuDfJ08rK5lSuEBLNdtbKvti7xDdezlbDBdvUC9v0SEUyYEumXlpS6Lh_YGbJRYJW6nyQ7otOQYRJLCONNGRbU_GFoTj5dSMge_g" , video:"https://youtu.be/SB41wiGbkaw")


m1 = Muscle.create(name:"Pectoralis")
m2 = Muscle.create(name:"Triceps ")
m3 = Muscle.create(name:"Deltoids")
m4 = Muscle.create(name:"Glutes")
m5 = Muscle.create(name:"Hamstrings")
m6 = Muscle.create(name:"Quadriceps")
m7 = Muscle.create(name:"Calves")
m8 = Muscle.create(name:"Biceps")
m9 = Muscle.create(name:"Obliques")
m10 = Muscle.create(name:"Trapezius")
m11 = Muscle.create(name:"Erector Spinae (Lower Back)")
m12 = Muscle.create(name:"Latissimus Dorsi (Lats)")


#bench press
TargetMuscle.create(workout_id: workout1.id, muscle_id: m1.id)
TargetMuscle.create(workout_id: workout1.id, muscle_id: m2.id)
TargetMuscle.create(workout_id: workout1.id, muscle_id: m3.id)
#back squat
TargetMuscle.create(workout_id: workout2.id, muscle_id: m4.id)
TargetMuscle.create(workout_id: workout2.id, muscle_id: m5.id)
TargetMuscle.create(workout_id: workout2.id, muscle_id: m6.id)
TargetMuscle.create(workout_id: workout2.id, muscle_id: m9.id)
#power Clean
TargetMuscle.create(workout_id: workout3.id, muscle_id: m10.id)
TargetMuscle.create(workout_id: workout3.id, muscle_id: m3.id)
TargetMuscle.create(workout_id: workout3.id, muscle_id: m4.id)
TargetMuscle.create(workout_id: workout3.id, muscle_id: m12.id)
TargetMuscle.create(workout_id: workout3.id, muscle_id: m1.id)
TargetMuscle.create(workout_id: workout3.id, muscle_id: m8.id)
#deadlift
TargetMuscle.create(workout_id: workout4.id, muscle_id: m10.id)
TargetMuscle.create(workout_id: workout4.id, muscle_id: m12.id)
TargetMuscle.create(workout_id: workout4.id, muscle_id: m11.id)
TargetMuscle.create(workout_id: workout4.id, muscle_id: m4.id)
TargetMuscle.create(workout_id: workout4.id, muscle_id: m5.id)
#Lat pulldown
TargetMuscle.create(workout_id: workout5.id, muscle_id: m10.id)
TargetMuscle.create(workout_id: workout5.id, muscle_id: m11.id)
TargetMuscle.create(workout_id: workout5.id, muscle_id: m12.id)
TargetMuscle.create(workout_id: workout5.id, muscle_id: m8.id)

#shoulder press
TargetMuscle.create(workout_id: workout6.id, muscle_id: m1.id)
TargetMuscle.create(workout_id: workout6.id, muscle_id: m3.id)
TargetMuscle.create(workout_id: workout6.id, muscle_id: m9.id)

#barbell row
TargetMuscle.create(workout_id: workout7.id, muscle_id: m8.id)
TargetMuscle.create(workout_id: workout7.id, muscle_id: m12.id)
TargetMuscle.create(workout_id: workout7.id, muscle_id: m11.id)
TargetMuscle.create(workout_id: workout7.id, muscle_id: m9.id)
#Leg press
TargetMuscle.create(workout_id: workout8.id, muscle_id: m5.id)
TargetMuscle.create(workout_id: workout8.id, muscle_id: m6.id)
TargetMuscle.create(workout_id: workout8.id, muscle_id: m7.id)
TargetMuscle.create(workout_id: workout8.id, muscle_id: m4.id)

#Leg extentions
TargetMuscle.create(workout_id: workout9.id, muscle_id: m5.id)

#bicep curls
TargetMuscle.create(workout_id: workout10.id, muscle_id: m8.id)



favorite1 = Favorite.create(user_id: user1.id , workout_id: workout1.id)
favorite2 = Favorite.create(user_id: user1.id, workout_id: workout2.id)
favorite3 = Favorite.create(user_id: user1.id, workout_id: workout3.id)


#add more data for client side