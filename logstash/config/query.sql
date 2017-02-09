select contacts.first_name, contacts.last_name, fav_colour.colour from contacts
join fav_colour on fav_colour.uid=contacts.uid;