ALTER TABLE service
    ADD COLUMN description TEXT,
    ALTER COLUMN photo_big_key TYPE TEXT,
    ALTER COLUMN photo_small_key TYPE TEXT;

INSERT INTO service (estimated_repair_time, name, type, cost, photo_big_key, photo_small_key, description, is_available, is_featured)
VALUES (10, 'Battery replacement', 'Engine', 1500, 'service-photos-1/big-c0841ac5-08e9-46ac-a289-2d70b2f9f89a', 'service-photos-1/small-46bec8d5-ecad-43c1-a6e4-2a0a3df0fd26', 'Our Battery Replacement service ensures that your vehicle has a reliable power source. We offer quick and efficient battery swaps, minimizing downtime and inconvenience. Our team will help you choose the right battery for your car, ensuring optimal performance. Drive with confidence knowing your vehicle has a dependable battery.', TRUE, TRUE);

INSERT INTO service (estimated_repair_time, name, type, cost, photo_big_key, photo_small_key, description, is_available, is_featured)
VALUES (10, 'Vulcanization', 'Suspension', 300, 'service-photos-2/big-0bd580ab-1c1b-4329-9265-e4f7daaf2b03', 'service-photos-2/small-3cff88ad-4505-428e-9879-9210e9a076fd', 'Our Vulcanization service ensures that your tires are repaired and maintained to the highest standards. We use advanced techniques to fix punctures and improve tire durability. This service enhances the safety and longevity of your tires, providing you with a smoother and safer driving experience. Trust our experts to keep your tires in excellent condition.', TRUE, TRUE);

INSERT INTO service (estimated_repair_time, name, type, cost, photo_big_key, photo_small_key, description, is_available, is_featured)
VALUES (10, 'Computerised car diagnostics', 'Computer', 3000, 'service-photos-3/big-d546e932-943d-437c-b4e4-3efddd0dfa84', 'service-photos-3/small-2a290c7e-29dd-48cc-83c5-64211626bb92', 'With our Computerized Car Diagnostics, we utilize state-of-the-art technology to pinpoint issues in your vehicle''s systems. This service allows us to quickly and accurately diagnose problems, ensuring efficient repairs. Our skilled technicians interpret diagnostic data to provide precise solutions. Keep your car running at its best with our advanced diagnostic services.', TRUE, TRUE);

INSERT INTO service (estimated_repair_time, name, type, cost, photo_big_key, photo_small_key, description, is_available, is_featured)
VALUES (10, 'Brake Pad Replacement', 'Suspension', 2000, 'service-photos-4/big-acc7a34c-fd10-4e24-8a10-459b395ba2a5', 'service-photos-4/small-8ce00b9d-813e-4d98-b09a-ae400dadc4f9', 'Ensure your safety with our Brake Pad Replacement service. We replace worn brake pads with high-quality components to maintain your vehicle''s braking efficiency. Our technicians perform thorough inspections to ensure your braking system is in top condition. Rely on us to keep your brakes responsive and effective.', TRUE, TRUE);

INSERT INTO service (estimated_repair_time, name, type, cost, photo_big_key, photo_small_key, description, is_available, is_featured)
VALUES (10, 'Oil Filter Change', 'Engine', 1000, 'service-photos-5/big-ebbaf181-6278-431d-a84d-f43fe0d951a0', 'service-photos-5/small-d3229e77-3bce-41ed-8cf4-e65d5503eae4', 'Ensure optimal engine performance with our professional Oil Filter Change service. Our expert technicians will replace your oil filter with a high-quality component to maintain engine cleanliness and efficiency. This routine maintenance helps to extend the lifespan of your engine and ensures smooth operation. Trust us to keep your vehicle running smoothly with our comprehensive oil filter change service.', TRUE, TRUE);
