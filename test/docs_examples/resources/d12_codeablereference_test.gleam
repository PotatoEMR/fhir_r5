import fhir/r5/complex_types as ct

import gleam/option.{None, Some}

pub fn resources_docs_12_codeablereference_1_test() {
  let _manifestation_1 =
    ct.Codeablereference(
      id: None,
      extension: [],
      concept: None,
      reference: Some(ct.Reference(
        id: None,
        extension: [],
        reference: Some("Observation/123"),
        type_: None,
        identifier: None,
        display: None,
      )),
    )

  let _manifestation_2 =
    ct.Codeablereference(
      id: None,
      extension: [],
      concept: Some(ct.Codeableconcept(
        id: None,
        extension: [],
        coding: [
          ct.Coding(
            id: None,
            extension: [],
            system: Some("http://snomed.info/sct"),
            version: None,
            code: Some("310008"),
            display: None,
            user_selected: None,
          ),
        ],
        text: None,
      )),
      reference: None,
    )
  Nil
}
