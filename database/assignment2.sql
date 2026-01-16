-- Insert Tony Stark
INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- query 1: Update account type to Admin
UPDATE public.account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony';

-- query 2: Update firstname by ID
UPDATE public.account
SET account_firstname = 'Tony'
WHERE account_id = 1;

-- query 3: Delete account
DELETE FROM public.account
WHERE account_id = 1;

-- query 4: Update Hummer description
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior') 
WHERE inv_make = 'GM';

-- query 5: Inner Join
SELECT 
    i.inv_make, 
    i.inv_model, 
    c.classification_name
FROM public.inventory i
INNER JOIN public.classification c 
    ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

-- query 6: Update file paths
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');