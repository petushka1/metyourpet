![MetYourPet Banner](resources/img/banner.png?raw=true "MetYourPet Banner")

# metyourpet
### Abstract

MetYourPet (the Pet Shelter Platform) is a globally-oriented decentralized application (dApp) built on the XRP Ledger (XRPL), with its origins rooted in a deeply empathetic response to the tragic situation faced by pets and animals in Ukraine during the war with Russia, which began on 24th February 2022 and continues to impact lives today. The conflict has left many pets without their masters due to devastating circumstances, including loss of life and forced emigration. Additionally, the complexities and expenses associated with transporting animals abroad have made it challenging for pet owners and refugees to be reunited with their furry companions.

In light of this humanitarian crisis, MetYourPet has been designed with a sense of purpose and compassion, aiming to provide a lifeline to pets and refugees worldwide. Through XRPL integration and the utilization of XUMM for secure sign-ins, the platform offers a comprehensive solution for connecting animal shelters, pet owners, volunteers, and refugees, fostering a supportive global community dedicated to facilitating pet reunions, adoptions, and animal welfare.

MetYourPet has secured the domain name metyourpet.xyz, which serves as the official online address for the platform. 

### Social Meaning and Value:

MetYourPet's genesis lies in the empathy and concern for the well-being of pets and animals affected by war in Ukraine. However, its mission transcends geographical boundaries, carrying social significance and value that extend to a broader global context. The core principles and impact of the Pet Shelter Platform include:

* Empowering Refugees and Pet Owners: The platform empowers refugees and pet owners by offering a means to connect with their pets left behind in challenging circumstances. This fosters a sense of hope, healing, and support during times of displacement.

* Rescue and Adoption Facilitation: By decentralizing pet registration and showcasing animals available for adoption, the platform streamlines the rescue process, ensuring that pets find loving homes and receive the care they deserve.

* XRPL Transparency and Trust: The utilization of XRPL and XUMM establishes a secure and transparent environment, promoting accountability, and enhancing trust between shelters, donors, and stakeholders.

* Promoting Responsible Pet Ownership: The platform encourages responsible pet ownership by providing XRPL NFTs that store comprehensive pet data, including health records, vaccination schedules, and medical history.

* Supporting Animal Shelters: The Pet Shelter Platform supports animal shelters by facilitating global adoptions, connecting them with potential adopters, and enabling financial contributions through XRPL payments.

* Global Community of Compassion: Beyond borders, the platform nurtures a global community of animal lovers, volunteers, and individuals united in their commitment to animal welfare and rescue efforts.

### Value for XRPL:

The Pet Shelter Platform showcases the versatility of the XRP Ledger, transforming it into a powerful tool for real-world humanitarian applications. XRPL's decentralized and immutable nature ensures the integrity of shelter and pet data, and its integration with XUMM reinforces a seamless user experience. The project further enhances XRPL's reputation as a blockchain that can drive positive change and foster social impact.

### Features for Future Development:

In line with the global vision of the Pet Shelter Platform, future developments seek to enhance the platform's reach and functionality for the benefit of pets, shelters, and communities worldwide:

* Cross-Border Pet Reunions: Implementing innovative features to facilitate cross-border pet reunions, allowing refugees and pet owners to connect with their pets across different countries.

* Localization and Multilingual Support: Expanding the platform's reach by providing multilingual support, enabling users from diverse regions to access and engage with the platform in their native languages.

* Strategic Partnerships: Collaborating with international animal welfare organizations and NGOs to form strategic partnerships that strengthen the platform's global adoption network and impact.

* Emergency Response Integration: Integrating with emergency response systems to expedite rescue efforts during natural disasters or crises, ensuring timely aid for stranded or injured pets.

* Educational Initiatives: Developing educational resources and initiatives to promote animal welfare, responsible pet ownership, and compassion for animals on a global scale.

* Pet Meal Brands/Stores Support: The app encourages pet stores to participate in animal welfare by offering support or discounts. Pet stores can create profiles to showcase their contributions and commitments to animal well-being.
  
* Participant Rating: To promote accountability and build trust, participants (volunteers, pet stores, adopters) can be rated by the community based on their interactions and contributions.
  
* Black List: Recognizing the importance of safety, the app includes a "Black List" feature, where users or entities with questionable intentions can be flagged, creating a safer environment for animals and users.

### Pet Adoption Flow

1. NFT Creation and Ownership:
The shelter, upon registration, creates an NFT (Non-Fungible Token) for each pet in its care. This NFT represents the unique identity of the pet. Initially, the shelter is the owner of these NFTs, representing the ownership of the pets.

2. Adoption Process:
When a pet is adopted, the adopter and shelter both sign the adoption agreement. The agreement specifies the terms and conditions of the adoption, the wallet addresses of the adopter and shelter, and any funding or care responsibilities. The shelter sends the NFT of the adopted pet to the specific XRP wallet address of the adopter.

3. Pseudo Smart-Contract:
To ensure the integrity and enforce the terms of the adoption agreement, multi-sign transactions can be considered (hooks and smart-contracts can be used). An automated process is implemented to handle various actions related to the adoption process and ownership of NFTs.

4. NFT Transfer:
The adoption transaction triggers the transfer of NFT ownership from the shelter to the Metyourpet Adoption wallet. The Metyourpet Adoption wallet issues a new NFT and requires the transaction to be signed by both the shelter and adopter.

5. Dual-Signature Transaction:
For the adoption and issuance of NFTs, a dual-signature transaction is required, where both the shelter and the adopter need to sign the transaction to validate and execute it.  Upon successful transfer, the NFT is now owned by the adopter or shelter (in the case of remote adoption), representing their ownership of the adopted pet.

6. Integration with XRP Wallet:
To facilitate the adoption process and NFT handling, the application will be integrated with an XRP wallet or use the Xumm SDK for wallet interactions.

7. User Interface (UI):
The implementation of a user-friendly interface that allows shelters and adopters to initiate and track the adoption process and handle NFT transfers.

## R&D

* Expanding the platform's reach by incorporating features like geolocation services to help users find animals available for adoption in their vicinity.

* Partnerships with veterinary clinics, animal trainers, and other relevant stakeholders to enhance the platform's capabilities and impact.
  

## Tech Characteristics:

The Pet Shelter Platform is built with cutting-edge technologies to ensure a robust, user-friendly, and secure experience:

***Front-end:*** React for a dynamic and responsive user interface, offering seamless interactions and an engaging experience.

***Back-end:*** Ruby on Rails, providing a powerful and scalable server-side framework to handle data processing and interactions with the XRP Ledger.

***XRP Ledger (XRPL) Integration:*** Leveraging the decentralized and transparent nature of XRPL for pet and shelter data storage, XRP payments, and NFT issuance.

***Database:*** Postgres, a reliable and efficient relational database, ensuring data integrity and seamless integration with Ruby on Rails.

### Start Build:

To get started with Pet Shelter Platform and contribute to this meaningful project, follow these steps:

1. Clone the Repository:
```
git clone https://github.com/petushka1/metyourpet.git
cd pet-shelter-platform
```

2. Install Dependencies:
```
// For Rails (back-end)
cd ../backend
bundle install
```
```
// For React (front-end)
cd ../frontend
npm install
```

1. Configure Database:
```
// Set up the database schema and seed initial data
cd ../backend
rails db:create
rails db:migrate
rails db:seed
```

1. Run the Server:
```
// Start the Rails server
cd ../backend
rails server
```

1. Start the React App:
```
// Start the React development server
cd ../frontend
npm start
```

1. Access the App:
Open your web browser and visit http://localhost:3000 to interact with the Pet Shelter Platform.

### Contributing:

We welcome contributions to improve and expand the Pet Shelter Platform. To contribute, follow these steps:

Fork the repository to your GitHub account.
Create a new branch for your feature or fix.
Make your changes and commit them with descriptive messages.
Push the changes to your forked repository.
Open a pull request (PR) to the main repository.
Issues:

If you encounter any bugs or have ideas for enhancements, please submit an issue on our GitHub repository. We appreciate your feedback!

### License:

The Pet Shelter Platform is open-source software licensed under the MIT License.

![MetYourPet Banner](resources/img/image.png?raw=true "MetYourPet Banner")

***The Pet Shelter Platform remains steadfast in its commitment to compassion, transparency, and technological innovation. As the project expands and evolves, it aims to make a profound and lasting impact on the lives of pets, refugees, and communities worldwide.***




