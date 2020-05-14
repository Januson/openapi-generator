# coding: utf-8

"""
    OpenAPI Petstore

    This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest

import petstore_api


class TestDog(unittest.TestCase):
    """Dog unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testDog(self):
        """Test Dog"""

        # make an instance of dog, a composed schema model
        class_name = 'Dog'
        color = 'white'
        breed = 'Jack Russel Terrier'
        dog = petstore_api.Dog(
            class_name=class_name,
            color=color,
            breed=breed
        )

        # check its properties
        self.assertEqual(dog.class_name, class_name)
        self.assertEqual(dog.color, color)
        self.assertEqual(dog.breed, breed)
        # access them with keys
        self.assertEqual(dog['class_name'], class_name)
        self.assertEqual(dog['color'], color)
        self.assertEqual(dog['breed'], breed)
        # access them with getattr
        self.assertEqual(getattr(dog, 'class_name'), class_name)
        self.assertEqual(getattr(dog, 'color'), color)
        self.assertEqual(getattr(dog, 'breed'), breed)

        # check the model's to_dict result
        self.assertEqual(
            dog.to_dict(),
            {
                'class_name': class_name,
                'color': color,
                'breed': breed,
            }
        )

        # setting a value that doesn't exist raises an exception
        # with a key
        with self.assertRaises(AttributeError):
            dog['invalid_variable'] = 'some value'
        # with setattr
        with self.assertRaises(AttributeError):
            setattr(dog, 'invalid_variable', 'some value')

        # getting a value that doesn't exist raises an exception
        # with a key
        with self.assertRaises(AttributeError):
            invalid_variable = dog['invalid_variable']
        # with getattr
        self.assertEquals(getattr(dog, 'invalid_variable', 'some value'), 'some value')

        with self.assertRaises(AttributeError):
            invalid_variable = getattr(dog, 'invalid_variable')

        # make sure that the ModelComposed class properties are correct
        # model.composed_schemas() stores the anyOf/allOf/oneOf info
        self.assertEqual(
            dog._composed_schemas,
            {
                'anyOf': [],
                'allOf': [
                    petstore_api.Animal,
                    petstore_api.DogAllOf,
                ],
                'oneOf': [],
            }
        )
        # model._composed_instances is a list of the instances that were
        # made from the anyOf/allOf/OneOf classes in model._composed_schemas()
        for composed_instance in dog._composed_instances:
            if composed_instance.__class__ == petstore_api.Animal:
                animal_instance = composed_instance
            elif composed_instance.__class__ == petstore_api.DogAllOf:
                dog_allof_instance = composed_instance
        self.assertEqual(
            dog._composed_instances,
            [animal_instance, dog_allof_instance]
        )
        # model._var_name_to_model_instances maps the variable name to the
        # model instances which store that variable
        self.assertEqual(
            dog._var_name_to_model_instances,
            {
                'breed': [dog, dog_allof_instance],
                'class_name': [dog, animal_instance],
                'color': [dog, animal_instance]
            }
        )
        # model._additional_properties_model_instances stores a list of
        # models which have the property additional_properties_type != None
        self.assertEqual(
            dog._additional_properties_model_instances, []
        )

        # if we modify one of the properties owned by multiple
        # model_instances we get an exception when we try to access that
        # property because the retrieved values are not all the same
        dog_allof_instance.breed = 'Golden Retriever'
        with self.assertRaises(petstore_api.ApiValueError):
            breed = dog.breed

        # including extra parameters raises an exception
        with self.assertRaises(petstore_api.ApiValueError):
            dog = petstore_api.Dog(
                class_name=class_name,
                color=color,
                breed=breed,
                unknown_property='some value'
            )


if __name__ == '__main__':
    unittest.main()
