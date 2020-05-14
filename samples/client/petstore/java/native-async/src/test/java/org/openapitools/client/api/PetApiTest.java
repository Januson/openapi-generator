/*
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import java.io.File;
import org.openapitools.client.model.ModelApiResponse;
import org.openapitools.client.model.Pet;
import org.junit.Test;
import org.junit.Ignore;
import org.junit.Assert;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for PetApi
 */
public class PetApiTest {

    private final PetApi api = new PetApi();

    /**
     * Add a new pet to the store
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void addPetTest() throws ApiException {
        //
        //Pet body = null;
        //
        //api.addPet(body);

        // TODO: test validations
    }
    /**
     * Deletes a pet
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deletePetTest() throws ApiException {
        //
        //Long petId = null;
        //
        //String apiKey = null;
        //
        //api.deletePet(petId, apiKey);

        // TODO: test validations
    }
    /**
     * Finds Pets by status
     *
     * Multiple status values can be provided with comma separated strings
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void findPetsByStatusTest() throws ApiException {
        //
        //List<String> status = null;
        //
        //List<Pet> response = api.findPetsByStatus(status);

        // TODO: test validations
    }
    /**
     * Finds Pets by tags
     *
     * Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void findPetsByTagsTest() throws ApiException {
        //
        //List<String> tags = null;
        //
        //List<Pet> response = api.findPetsByTags(tags);

        // TODO: test validations
    }
    /**
     * Find pet by ID
     *
     * Returns a single pet
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getPetByIdTest() throws ApiException {
        //
        //Long petId = null;
        //
        //Pet response = api.getPetById(petId);

        // TODO: test validations
    }
    /**
     * Update an existing pet
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updatePetTest() throws ApiException {
        //
        //Pet body = null;
        //
        //api.updatePet(body);

        // TODO: test validations
    }
    /**
     * Updates a pet in the store with form data
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updatePetWithFormTest() throws ApiException {
        //
        //Long petId = null;
        //
        //String name = null;
        //
        //String status = null;
        //
        //api.updatePetWithForm(petId, name, status);

        // TODO: test validations
    }
    /**
     * uploads an image
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void uploadFileTest() throws ApiException {
        //
        //Long petId = null;
        //
        //String additionalMetadata = null;
        //
        //File file = null;
        //
        //ModelApiResponse response = api.uploadFile(petId, additionalMetadata, file);

        // TODO: test validations
    }
    /**
     * uploads an image (required)
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void uploadFileWithRequiredFileTest() throws ApiException {
        //
        //Long petId = null;
        //
        //File requiredFile = null;
        //
        //String additionalMetadata = null;
        //
        //ModelApiResponse response = api.uploadFileWithRequiredFile(petId, requiredFile, additionalMetadata);

        // TODO: test validations
    }
}
