# Student Wellness Tracker

## General Description
Student well-being is crucial for their success and happiness. Schools are more than places for learning facts; they are environments where students grow and develop as individuals. In today’s fast-paced world, students face numerous challenges that can impact their mental and physical health. Addressing these challenges proactively is essential for improving academic performance, social interactions, and overall health.

The Student Wellness Tracker is designed to help students manage their health and well-being. This app includes features like mental health check-ins, logging physical activities and nutrition, sleep tracking, social and emotional learning (SEL) modules, real-time support, and goal setting. These tools support students in maintaining a balanced and healthy lifestyle.

## Key Benefits
- **🧠 Better Mental Health**: Regular check-ins and mood tracking can catch problems early and help reduce anxiety and depression. The app can identify when a student might need extra support, allowing timely interventions.
- **💪 Improved Physical Health**: Logging activities and nutrition encourages healthier habits, boosting both physical health and academic performance. The data can help identify patterns and suggest improvements, such as the best times for physical activities.
- **😴 Enhanced Sleep Quality**: Tracking sleep patterns and offering tips can help students get better sleep, which is key for learning and memory. Schools can use this data to understand when students are most alert and adjust schedules to start classes at optimal times.
- **❤️ Social and Emotional Growth**: SEL modules teach skills like empathy and self-awareness, creating a more supportive school environment. Students can learn to manage their emotions better, leading to improved social interactions and reduced conflicts.
- **🚨 Immediate Help**: Quick access to mental health resources and emergency contacts ensures students get the help they need when they need it. This feature can prevent crises by providing immediate support.
- **🎯 Achieving Goals**: Setting and tracking wellness goals motivates students and builds a sense of accomplishment. The app can help tailor personal wellness plans, making goal achievement more attainable and rewarding.

## Data Collection for Future Research
By connecting with smartwatches and wearable devices, the app makes data collection seamless and accurate. This data can be used to gain deeper insights into student health trends and develop better wellness programs. Schools can adapt their schedules based on aggregate data to create environments where students thrive best. For example, understanding when students are most focused can lead to adjusting class times for optimal learning.

In short, the Student Wellness Tracker is more than an app. It's a vital tool designed to support students' health and well-being, helping them become healthier, happier, and more successful. By using this app, we can create a more personalized and responsive educational environment, ensuring every student gets the support they need to reach their full potential. 🌟 

## **Tech Stack**

- **CoreData**: Used for managing the model layer objects in the application, enabling efficient data storage and retrieval.
- **SwiftUI**: Utilized for building the user interface with a declarative Swift syntax, making it easier to design and manage UI components.

<img width="794" alt="image" src="https://github.com/user-attachments/assets/dab08120-0732-4576-926b-fb4b66462f96">


## Requirements & Priority 
https://aboard-skink-c43.notion.site/Final-project-Stage-1-Requirements-and-QA-6393fe0a8f2d41c29df5466294710b6d

## **Actual Components That Was Implemented**

### **1. Journal Entries View**

- **Purpose**: Displays the list of journal entries.
- **Features**:
  - **View**: Shows all entries.
  - **Add**: Allows users to create new entries.
  - **Edit**: Enables modification of existing entries.
  - **Delete**: Removes selected entries.
- **Interaction**: Users can navigate through entries, edit content, and add new ones.

### **2. Tracker Entries View**

- **Purpose**: Displays mood, activity, and sleep tracker data.
- **Features**:
  - **View**: Shows daily tracked data.
  - **Add**: Allows users to input new tracker entries.
  - **Edit**: Enables modification of existing tracker data.
  - **Delete**: Removes selected tracker entries.
- **Interaction**: Users can input and view their tracked data.

### **3. Charts View**

- **Purpose**: Provides visual representation of trends and insights.
- **Features**:
  - **Charts**: Displays mood, activity, and sleep trends.
  - **Analysis**: Offers insights based on tracked data.
- **Interaction**: Users can analyze trends and gain insights from visual data.

### **4. Resources View**

- **Purpose**: Offers educational content on mental health and nutrition.
- **Features**:
  - **Articles**: Provides articles and tips on mental health.
  - **Nutrition**: Offers guidance on healthy eating habits.
- **Interaction**: Users can explore resources for self-improvement and support.

### **5. Data Management**

- **JournalEntriesViewModel**:
  - **Purpose**: Manages journal entries.
  - **Features**: CRUD operations for journal entries.
- **TrackerEntriesViewModel**:
  - **Purpose**: Handles mood, activity, and sleep data.
  - **Features**: CRUD operations for tracker entries.
- **Core Data Model**:
  - **Purpose**: Defines the data schema and entities.
  - **Features**: Data persistence and retrieval.

## Demo Screenshots

### Check-In
![image](https://github.com/user-attachments/assets/0731e324-bb63-409e-a61d-c084888b2788)

### Logging
![image](https://github.com/user-attachments/assets/e4b41482-3705-4253-9c5f-c1928beaae8e)

### Journal
![image](https://github.com/user-attachments/assets/2ef68012-d38b-400e-b0fd-7757db13a098)

### Resouces
![image](https://github.com/user-attachments/assets/8b33aa83-1f4b-47c5-9409-5b9d3bb59625)

## **Usage**

1. Run the app in Xcode.
2. Navigate through the application to log mood, activity, and sleep data.
3. Use the journaling feature to create and edit personal journal entries.
4. Explore the resources page for additional mental health and nutrition support.
5. View trends and insights through the chart view.

## **Contributing**

- Fork the repository.
- Create a feature branch (`git checkout -b feature-branch`).
- Commit your changes (`git commit -am 'Add new feature'`).
- Push to the branch (`git push origin feature-branch`).
- Create a new Pull Request.

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## **Contact**

For any inquiries or feedback, please contact Antonina Novak(mailto:anovak@kse.org.ua).
