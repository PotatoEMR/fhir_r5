////[https://hl7.org/fhir/r5](https://hl7.org/fhir/r5) r5 search params

import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/string

pub fn to_string(params) {
  list.fold(
    from: [],
    over: params,
    with: fn(acc, param: #(String, Option(String))) {
      case param.1 {
        None -> acc
        Some(p) -> [param.0 <> "=" <> p, ..acc]
      }
    },
  )
  |> string.join("&")
}

pub type Account {
  Account(
    owner: Option(String),
    identifier: Option(String),
    period: Option(String),
    patient: Option(String),
    subject: Option(String),
    name: Option(String),
    guarantor: Option(String),
    type_: Option(String),
    relatedaccount: Option(String),
    status: Option(String),
  )
}

pub type Activitydefinition {
  Activitydefinition(
    date: Option(String),
    identifier: Option(String),
    successor: Option(String),
    context_type_value: Option(String),
    kind: Option(String),
    jurisdiction: Option(String),
    derived_from: Option(String),
    description: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    composed_of: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    depends_on: Option(String),
    effective: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Actordefinition {
  Actordefinition(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    type_: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Administrableproductdefinition {
  Administrableproductdefinition(
    identifier: Option(String),
    manufactured_item: Option(String),
    ingredient: Option(String),
    route: Option(String),
    dose_form: Option(String),
    device: Option(String),
    form_of: Option(String),
    target_species: Option(String),
    status: Option(String),
  )
}

pub type Adverseevent {
  Adverseevent(
    date: Option(String),
    identifier: Option(String),
    recorder: Option(String),
    study: Option(String),
    code: Option(String),
    actuality: Option(String),
    subject: Option(String),
    substance: Option(String),
    patient: Option(String),
    resultingeffect: Option(String),
    seriousness: Option(String),
    location: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Allergyintolerance {
  Allergyintolerance(
    date: Option(String),
    severity: Option(String),
    identifier: Option(String),
    code: Option(String),
    verification_status: Option(String),
    criticality: Option(String),
    manifestation_reference: Option(String),
    clinical_status: Option(String),
    type_: Option(String),
    participant: Option(String),
    manifestation_code: Option(String),
    route: Option(String),
    patient: Option(String),
    category: Option(String),
    last_date: Option(String),
  )
}

pub type Appointment {
  Appointment(
    date: Option(String),
    identifier: Option(String),
    specialty: Option(String),
    service_category: Option(String),
    practitioner: Option(String),
    appointment_type: Option(String),
    part_status: Option(String),
    subject: Option(String),
    service_type: Option(String),
    slot: Option(String),
    reason_code: Option(String),
    actor: Option(String),
    based_on: Option(String),
    patient: Option(String),
    reason_reference: Option(String),
    supporting_info: Option(String),
    requested_period: Option(String),
    location: Option(String),
    group: Option(String),
    service_type_reference: Option(String),
    status: Option(String),
  )
}

pub type Appointmentresponse {
  Appointmentresponse(
    actor: Option(String),
    identifier: Option(String),
    practitioner: Option(String),
    part_status: Option(String),
    patient: Option(String),
    appointment: Option(String),
    location: Option(String),
    group: Option(String),
  )
}

pub type Artifactassessment {
  Artifactassessment(date: Option(String), identifier: Option(String))
}

pub type Auditevent {
  Auditevent(
    date: Option(String),
    agent: Option(String),
    entity_role: Option(String),
    code: Option(String),
    purpose: Option(String),
    encounter: Option(String),
    source: Option(String),
    based_on: Option(String),
    patient: Option(String),
    action: Option(String),
    agent_role: Option(String),
    category: Option(String),
    entity: Option(String),
    outcome: Option(String),
    policy: Option(String),
  )
}

pub type Basic {
  Basic(
    identifier: Option(String),
    code: Option(String),
    author: Option(String),
    created: Option(String),
    patient: Option(String),
    subject: Option(String),
  )
}

pub type Binary {
  Binary
}

pub type Biologicallyderivedproduct {
  Biologicallyderivedproduct(
    identifier: Option(String),
    request: Option(String),
    code: Option(String),
    product_status: Option(String),
    serial_number: Option(String),
    biological_source_event: Option(String),
    product_category: Option(String),
    collector: Option(String),
  )
}

pub type Biologicallyderivedproductdispense {
  Biologicallyderivedproductdispense(
    identifier: Option(String),
    product: Option(String),
    performer: Option(String),
    patient: Option(String),
    status: Option(String),
  )
}

pub type Bodystructure {
  Bodystructure(
    identifier: Option(String),
    included_structure: Option(String),
    excluded_structure: Option(String),
    morphology: Option(String),
    patient: Option(String),
  )
}

pub type Bundle {
  Bundle(
    identifier: Option(String),
    composition: Option(String),
    message: Option(String),
    type_: Option(String),
    timestamp: Option(String),
  )
}

pub type Capabilitystatement {
  Capabilitystatement(
    date: Option(String),
    identifier: Option(String),
    resource_profile: Option(String),
    context_type_value: Option(String),
    software: Option(String),
    resource: Option(String),
    jurisdiction: Option(String),
    format: Option(String),
    description: Option(String),
    context_type: Option(String),
    fhirversion: Option(String),
    title: Option(String),
    version: Option(String),
    supported_profile: Option(String),
    url: Option(String),
    mode: Option(String),
    context_quantity: Option(String),
    security_service: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    guide: Option(String),
    status: Option(String),
  )
}

pub type Careplan {
  Careplan(
    care_team: Option(String),
    date: Option(String),
    identifier: Option(String),
    goal: Option(String),
    custodian: Option(String),
    replaces: Option(String),
    subject: Option(String),
    instantiates_canonical: Option(String),
    part_of: Option(String),
    encounter: Option(String),
    intent: Option(String),
    activity_reference: Option(String),
    condition: Option(String),
    based_on: Option(String),
    patient: Option(String),
    instantiates_uri: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Careteam {
  Careteam(
    date: Option(String),
    identifier: Option(String),
    patient: Option(String),
    subject: Option(String),
    name: Option(String),
    category: Option(String),
    participant: Option(String),
    status: Option(String),
  )
}

pub type Chargeitem {
  Chargeitem(
    identifier: Option(String),
    performing_organization: Option(String),
    code: Option(String),
    quantity: Option(String),
    subject: Option(String),
    encounter: Option(String),
    occurrence: Option(String),
    entered_date: Option(String),
    performer_function: Option(String),
    factor_override: Option(String),
    patient: Option(String),
    service: Option(String),
    price_override: Option(String),
    enterer: Option(String),
    performer_actor: Option(String),
    account: Option(String),
    requesting_organization: Option(String),
    status: Option(String),
  )
}

pub type Chargeitemdefinition {
  Chargeitemdefinition(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    effective: Option(String),
    context: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Citation {
  Citation(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    classification_type: Option(String),
    context_type: Option(String),
    title: Option(String),
    classification: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    effective: Option(String),
    context: Option(String),
    name: Option(String),
    classifier: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Claim {
  Claim(
    care_team: Option(String),
    identifier: Option(String),
    created: Option(String),
    use_: Option(String),
    encounter: Option(String),
    priority: Option(String),
    payee: Option(String),
    provider: Option(String),
    insurer: Option(String),
    patient: Option(String),
    detail_udi: Option(String),
    enterer: Option(String),
    procedure_udi: Option(String),
    subdetail_udi: Option(String),
    facility: Option(String),
    item_udi: Option(String),
    status: Option(String),
  )
}

pub type Claimresponse {
  Claimresponse(
    identifier: Option(String),
    request: Option(String),
    disposition: Option(String),
    created: Option(String),
    insurer: Option(String),
    patient: Option(String),
    use_: Option(String),
    payment_date: Option(String),
    outcome: Option(String),
    requestor: Option(String),
    status: Option(String),
  )
}

pub type Clinicalimpression {
  Clinicalimpression(
    date: Option(String),
    identifier: Option(String),
    performer: Option(String),
    problem: Option(String),
    previous: Option(String),
    finding_code: Option(String),
    patient: Option(String),
    subject: Option(String),
    supporting_info: Option(String),
    encounter: Option(String),
    finding_ref: Option(String),
    status: Option(String),
  )
}

pub type Clinicalusedefinition {
  Clinicalusedefinition(
    contraindication_reference: Option(String),
    identifier: Option(String),
    indication_reference: Option(String),
    product: Option(String),
    subject: Option(String),
    effect: Option(String),
    interaction: Option(String),
    indication: Option(String),
    type_: Option(String),
    contraindication: Option(String),
    effect_reference: Option(String),
    status: Option(String),
  )
}

pub type Codesystem {
  Codesystem(
    date: Option(String),
    identifier: Option(String),
    code: Option(String),
    context_type_value: Option(String),
    content_mode: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    derived_from: Option(String),
    context_type: Option(String),
    language: Option(String),
    predecessor: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    supplements: Option(String),
    effective: Option(String),
    system: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Communication {
  Communication(
    identifier: Option(String),
    subject: Option(String),
    instantiates_canonical: Option(String),
    part_of: Option(String),
    received: Option(String),
    encounter: Option(String),
    medium: Option(String),
    sent: Option(String),
    based_on: Option(String),
    sender: Option(String),
    patient: Option(String),
    recipient: Option(String),
    topic: Option(String),
    instantiates_uri: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Communicationrequest {
  Communicationrequest(
    authored: Option(String),
    requester: Option(String),
    identifier: Option(String),
    replaces: Option(String),
    subject: Option(String),
    encounter: Option(String),
    medium: Option(String),
    occurrence: Option(String),
    priority: Option(String),
    group_identifier: Option(String),
    based_on: Option(String),
    patient: Option(String),
    recipient: Option(String),
    information_provider: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Compartmentdefinition {
  Compartmentdefinition(
    date: Option(String),
    code: Option(String),
    context_type_value: Option(String),
    resource: Option(String),
    description: Option(String),
    context_type: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Composition {
  Composition(
    date: Option(String),
    identifier: Option(String),
    period: Option(String),
    event_code: Option(String),
    author: Option(String),
    subject: Option(String),
    section: Option(String),
    encounter: Option(String),
    title: Option(String),
    type_: Option(String),
    version: Option(String),
    attester: Option(String),
    url: Option(String),
    event_reference: Option(String),
    section_text: Option(String),
    entry: Option(String),
    related: Option(String),
    patient: Option(String),
    category: Option(String),
    section_code_text: Option(String),
    status: Option(String),
  )
}

pub type Conceptmap {
  Conceptmap(
    date: Option(String),
    target_scope: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    target_group_system: Option(String),
    derived_from: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    title: Option(String),
    context_quantity: Option(String),
    effective: Option(String),
    source_scope: Option(String),
    context: Option(String),
    context_type_quantity: Option(String),
    target_code: Option(String),
    identifier: Option(String),
    source_scope_uri: Option(String),
    source_group_system: Option(String),
    mapping_property: Option(String),
    other_map: Option(String),
    version: Option(String),
    url: Option(String),
    source_code: Option(String),
    target_scope_uri: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    status: Option(String),
  )
}

pub type Condition {
  Condition(
    evidence_detail: Option(String),
    severity: Option(String),
    identifier: Option(String),
    onset_info: Option(String),
    recorded_date: Option(String),
    code: Option(String),
    evidence: Option(String),
    participant_function: Option(String),
    subject: Option(String),
    participant_actor: Option(String),
    verification_status: Option(String),
    clinical_status: Option(String),
    encounter: Option(String),
    onset_date: Option(String),
    abatement_date: Option(String),
    stage: Option(String),
    abatement_string: Option(String),
    patient: Option(String),
    abatement_age: Option(String),
    onset_age: Option(String),
    body_site: Option(String),
    category: Option(String),
  )
}

pub type Conditiondefinition {
  Conditiondefinition(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Consent {
  Consent(
    date: Option(String),
    identifier: Option(String),
    controller: Option(String),
    period: Option(String),
    data: Option(String),
    manager: Option(String),
    purpose: Option(String),
    subject: Option(String),
    verified_date: Option(String),
    grantee: Option(String),
    source_reference: Option(String),
    verified: Option(String),
    actor: Option(String),
    security_label: Option(String),
    patient: Option(String),
    action: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Contract {
  Contract(
    identifier: Option(String),
    instantiates: Option(String),
    patient: Option(String),
    subject: Option(String),
    authority: Option(String),
    domain: Option(String),
    issued: Option(String),
    url: Option(String),
    signer: Option(String),
    status: Option(String),
  )
}

pub type Coverage {
  Coverage(
    identifier: Option(String),
    subscriber: Option(String),
    subscriberid: Option(String),
    type_: Option(String),
    beneficiary: Option(String),
    patient: Option(String),
    insurer: Option(String),
    class_value: Option(String),
    paymentby_party: Option(String),
    class_type: Option(String),
    dependent: Option(String),
    policy_holder: Option(String),
    status: Option(String),
  )
}

pub type Coverageeligibilityrequest {
  Coverageeligibilityrequest(
    identifier: Option(String),
    provider: Option(String),
    created: Option(String),
    patient: Option(String),
    enterer: Option(String),
    facility: Option(String),
    status: Option(String),
  )
}

pub type Coverageeligibilityresponse {
  Coverageeligibilityresponse(
    identifier: Option(String),
    request: Option(String),
    disposition: Option(String),
    created: Option(String),
    insurer: Option(String),
    patient: Option(String),
    outcome: Option(String),
    requestor: Option(String),
    status: Option(String),
  )
}

pub type Detectedissue {
  Detectedissue(
    identifier: Option(String),
    code: Option(String),
    identified: Option(String),
    author: Option(String),
    subject: Option(String),
    patient: Option(String),
    implicated: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Device {
  Device(
    udi_di: Option(String),
    identifier: Option(String),
    parent: Option(String),
    manufacture_date: Option(String),
    udi_carrier: Option(String),
    code: Option(String),
    device_name: Option(String),
    lot_number: Option(String),
    serial_number: Option(String),
    specification: Option(String),
    type_: Option(String),
    version: Option(String),
    url: Option(String),
    manufacturer: Option(String),
    code_value_concept: Option(String),
    organization: Option(String),
    biological_source_event: Option(String),
    definition: Option(String),
    location: Option(String),
    model: Option(String),
    expiration_date: Option(String),
    specification_version: Option(String),
    status: Option(String),
  )
}

pub type Deviceassociation {
  Deviceassociation(
    identifier: Option(String),
    subject: Option(String),
    patient: Option(String),
    device: Option(String),
    operator: Option(String),
    status: Option(String),
  )
}

pub type Devicedefinition {
  Devicedefinition(
    identifier: Option(String),
    device_name: Option(String),
    organization: Option(String),
    specification: Option(String),
    type_: Option(String),
    specification_version: Option(String),
    manufacturer: Option(String),
  )
}

pub type Devicedispense {
  Devicedispense(
    identifier: Option(String),
    code: Option(String),
    subject: Option(String),
    patient: Option(String),
    status: Option(String),
  )
}

pub type Devicemetric {
  Devicemetric(
    identifier: Option(String),
    category: Option(String),
    type_: Option(String),
    device: Option(String),
  )
}

pub type Devicerequest {
  Devicerequest(
    insurance: Option(String),
    performer_code: Option(String),
    requester: Option(String),
    identifier: Option(String),
    code: Option(String),
    performer: Option(String),
    event_date: Option(String),
    subject: Option(String),
    instantiates_canonical: Option(String),
    encounter: Option(String),
    authored_on: Option(String),
    intent: Option(String),
    group_identifier: Option(String),
    based_on: Option(String),
    patient: Option(String),
    instantiates_uri: Option(String),
    device: Option(String),
    prior_request: Option(String),
    status: Option(String),
  )
}

pub type Deviceusage {
  Deviceusage(
    identifier: Option(String),
    patient: Option(String),
    device: Option(String),
    status: Option(String),
  )
}

pub type Diagnosticreport {
  Diagnosticreport(
    date: Option(String),
    identifier: Option(String),
    study: Option(String),
    code: Option(String),
    performer: Option(String),
    subject: Option(String),
    encounter: Option(String),
    media: Option(String),
    conclusion: Option(String),
    result: Option(String),
    based_on: Option(String),
    patient: Option(String),
    specimen: Option(String),
    category: Option(String),
    issued: Option(String),
    results_interpreter: Option(String),
    status: Option(String),
  )
}

pub type Documentreference {
  Documentreference(
    date: Option(String),
    modality: Option(String),
    subject: Option(String),
    description: Option(String),
    language: Option(String),
    type_: Option(String),
    relation: Option(String),
    setting: Option(String),
    doc_status: Option(String),
    based_on: Option(String),
    format_canonical: Option(String),
    patient: Option(String),
    context: Option(String),
    relationship: Option(String),
    creation: Option(String),
    identifier: Option(String),
    period: Option(String),
    event_code: Option(String),
    bodysite: Option(String),
    custodian: Option(String),
    author: Option(String),
    format_code: Option(String),
    bodysite_reference: Option(String),
    format_uri: Option(String),
    version: Option(String),
    attester: Option(String),
    contenttype: Option(String),
    event_reference: Option(String),
    security_label: Option(String),
    location: Option(String),
    category: Option(String),
    relatesto: Option(String),
    facility: Option(String),
    status: Option(String),
  )
}

pub type Encounter {
  Encounter(
    date: Option(String),
    participant_type: Option(String),
    subject: Option(String),
    subject_status: Option(String),
    appointment: Option(String),
    part_of: Option(String),
    type_: Option(String),
    participant: Option(String),
    reason_code: Option(String),
    based_on: Option(String),
    date_start: Option(String),
    patient: Option(String),
    location_period: Option(String),
    special_arrangement: Option(String),
    class: Option(String),
    identifier: Option(String),
    diagnosis_code: Option(String),
    practitioner: Option(String),
    episode_of_care: Option(String),
    length: Option(String),
    careteam: Option(String),
    end_date: Option(String),
    diagnosis_reference: Option(String),
    reason_reference: Option(String),
    location: Option(String),
    service_provider: Option(String),
    account: Option(String),
    status: Option(String),
  )
}

pub type Encounterhistory {
  Encounterhistory(
    identifier: Option(String),
    patient: Option(String),
    subject: Option(String),
    encounter: Option(String),
    status: Option(String),
  )
}

pub type Endpoint {
  Endpoint(
    payload_type: Option(String),
    identifier: Option(String),
    connection_type: Option(String),
    organization: Option(String),
    name: Option(String),
    status: Option(String),
  )
}

pub type Enrollmentrequest {
  Enrollmentrequest(
    identifier: Option(String),
    patient: Option(String),
    subject: Option(String),
    status: Option(String),
  )
}

pub type Enrollmentresponse {
  Enrollmentresponse(
    identifier: Option(String),
    request: Option(String),
    status: Option(String),
  )
}

pub type Episodeofcare {
  Episodeofcare(
    date: Option(String),
    identifier: Option(String),
    diagnosis_code: Option(String),
    diagnosis_reference: Option(String),
    patient: Option(String),
    organization: Option(String),
    reason_reference: Option(String),
    type_: Option(String),
    care_manager: Option(String),
    reason_code: Option(String),
    incoming_referral: Option(String),
    status: Option(String),
  )
}

pub type Eventdefinition {
  Eventdefinition(
    date: Option(String),
    identifier: Option(String),
    successor: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    derived_from: Option(String),
    description: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    composed_of: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    depends_on: Option(String),
    effective: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Evidence {
  Evidence(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Evidencereport {
  Evidencereport(
    context_quantity: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    context: Option(String),
    publisher: Option(String),
    context_type: Option(String),
    context_type_quantity: Option(String),
    url: Option(String),
    status: Option(String),
  )
}

pub type Evidencevariable {
  Evidencevariable(
    date: Option(String),
    identifier: Option(String),
    successor: Option(String),
    context_type_value: Option(String),
    derived_from: Option(String),
    description: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    composed_of: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    depends_on: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Examplescenario {
  Examplescenario(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    context_type: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Explanationofbenefit {
  Explanationofbenefit(
    care_team: Option(String),
    coverage: Option(String),
    identifier: Option(String),
    created: Option(String),
    encounter: Option(String),
    payee: Option(String),
    disposition: Option(String),
    provider: Option(String),
    patient: Option(String),
    detail_udi: Option(String),
    claim: Option(String),
    enterer: Option(String),
    procedure_udi: Option(String),
    subdetail_udi: Option(String),
    facility: Option(String),
    item_udi: Option(String),
    status: Option(String),
  )
}

pub type Familymemberhistory {
  Familymemberhistory(
    date: Option(String),
    identifier: Option(String),
    code: Option(String),
    patient: Option(String),
    sex: Option(String),
    instantiates_canonical: Option(String),
    instantiates_uri: Option(String),
    relationship: Option(String),
    status: Option(String),
  )
}

pub type Flag {
  Flag(
    date: Option(String),
    identifier: Option(String),
    author: Option(String),
    patient: Option(String),
    subject: Option(String),
    encounter: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Formularyitem {
  Formularyitem(identifier: Option(String), code: Option(String))
}

pub type Genomicstudy {
  Genomicstudy(
    identifier: Option(String),
    patient: Option(String),
    subject: Option(String),
    focus: Option(String),
    status: Option(String),
  )
}

pub type Goal {
  Goal(
    target_measure: Option(String),
    identifier: Option(String),
    addresses: Option(String),
    lifecycle_status: Option(String),
    achievement_status: Option(String),
    patient: Option(String),
    subject: Option(String),
    description: Option(String),
    start_date: Option(String),
    category: Option(String),
    target_date: Option(String),
  )
}

pub type Graphdefinition {
  Graphdefinition(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    start: Option(String),
    description: Option(String),
    context_type: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Group {
  Group(
    identifier: Option(String),
    characteristic_value: Option(String),
    managing_entity: Option(String),
    code: Option(String),
    member: Option(String),
    name: Option(String),
    exclude: Option(String),
    membership: Option(String),
    type_: Option(String),
    characteristic_reference: Option(String),
    value: Option(String),
    characteristic: Option(String),
  )
}

pub type Guidanceresponse {
  Guidanceresponse(
    identifier: Option(String),
    request: Option(String),
    patient: Option(String),
    subject: Option(String),
    status: Option(String),
  )
}

pub type Healthcareservice {
  Healthcareservice(
    identifier: Option(String),
    specialty: Option(String),
    service_category: Option(String),
    service_type: Option(String),
    active: Option(String),
    eligibility: Option(String),
    program: Option(String),
    characteristic: Option(String),
    endpoint: Option(String),
    coverage_area: Option(String),
    organization: Option(String),
    offered_in: Option(String),
    name: Option(String),
    location: Option(String),
    communication: Option(String),
  )
}

pub type Imagingselection {
  Imagingselection(
    identifier: Option(String),
    body_structure: Option(String),
    based_on: Option(String),
    code: Option(String),
    subject: Option(String),
    patient: Option(String),
    derived_from: Option(String),
    issued: Option(String),
    body_site: Option(String),
    study_uid: Option(String),
    status: Option(String),
  )
}

pub type Imagingstudy {
  Imagingstudy(
    identifier: Option(String),
    reason: Option(String),
    dicom_class: Option(String),
    instance: Option(String),
    modality: Option(String),
    performer: Option(String),
    subject: Option(String),
    started: Option(String),
    encounter: Option(String),
    referrer: Option(String),
    body_structure: Option(String),
    endpoint: Option(String),
    based_on: Option(String),
    patient: Option(String),
    series: Option(String),
    body_site: Option(String),
    status: Option(String),
  )
}

pub type Immunization {
  Immunization(
    date: Option(String),
    identifier: Option(String),
    performer: Option(String),
    reaction: Option(String),
    lot_number: Option(String),
    status_reason: Option(String),
    reason_code: Option(String),
    manufacturer: Option(String),
    target_disease: Option(String),
    patient: Option(String),
    series: Option(String),
    vaccine_code: Option(String),
    reason_reference: Option(String),
    location: Option(String),
    reaction_date: Option(String),
    status: Option(String),
  )
}

pub type Immunizationevaluation {
  Immunizationevaluation(
    date: Option(String),
    identifier: Option(String),
    target_disease: Option(String),
    patient: Option(String),
    dose_status: Option(String),
    immunization_event: Option(String),
    status: Option(String),
  )
}

pub type Immunizationrecommendation {
  Immunizationrecommendation(
    date: Option(String),
    identifier: Option(String),
    target_disease: Option(String),
    patient: Option(String),
    vaccine_type: Option(String),
    information: Option(String),
    support: Option(String),
    status: Option(String),
  )
}

pub type Implementationguide {
  Implementationguide(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    resource: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    experimental: Option(String),
    global: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    depends_on: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Ingredient {
  Ingredient(
    identifier: Option(String),
    role: Option(String),
    substance: Option(String),
    strength_concentration_ratio: Option(String),
    for: Option(String),
    substance_code: Option(String),
    strength_concentration_quantity: Option(String),
    manufacturer: Option(String),
    substance_definition: Option(String),
    function: Option(String),
    strength_presentation_ratio: Option(String),
    strength_presentation_quantity: Option(String),
    status: Option(String),
  )
}

pub type Insuranceplan {
  Insuranceplan(
    identifier: Option(String),
    address: Option(String),
    address_state: Option(String),
    owned_by: Option(String),
    type_: Option(String),
    address_postalcode: Option(String),
    address_country: Option(String),
    administered_by: Option(String),
    endpoint: Option(String),
    phonetic: Option(String),
    address_use: Option(String),
    name: Option(String),
    address_city: Option(String),
    status: Option(String),
  )
}

pub type Inventoryitem {
  Inventoryitem(
    identifier: Option(String),
    code: Option(String),
    subject: Option(String),
    status: Option(String),
  )
}

pub type Inventoryreport {
  Inventoryreport(
    item_reference: Option(String),
    identifier: Option(String),
    item: Option(String),
    status: Option(String),
  )
}

pub type Invoice {
  Invoice(
    date: Option(String),
    identifier: Option(String),
    totalgross: Option(String),
    participant_role: Option(String),
    subject: Option(String),
    type_: Option(String),
    issuer: Option(String),
    participant: Option(String),
    totalnet: Option(String),
    patient: Option(String),
    recipient: Option(String),
    account: Option(String),
    status: Option(String),
  )
}

pub type Library {
  Library(
    date: Option(String),
    identifier: Option(String),
    successor: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    derived_from: Option(String),
    description: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    composed_of: Option(String),
    title: Option(String),
    type_: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    depends_on: Option(String),
    effective: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    content_type: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Linkage {
  Linkage(item: Option(String), author: Option(String), source: Option(String))
}

pub type Listfhir {
  Listfhir(
    date: Option(String),
    identifier: Option(String),
    empty_reason: Option(String),
    item: Option(String),
    code: Option(String),
    notes: Option(String),
    patient: Option(String),
    subject: Option(String),
    encounter: Option(String),
    source: Option(String),
    title: Option(String),
    status: Option(String),
  )
}

pub type Location {
  Location(
    identifier: Option(String),
    partof: Option(String),
    address: Option(String),
    address_state: Option(String),
    operational_status: Option(String),
    type_: Option(String),
    address_postalcode: Option(String),
    characteristic: Option(String),
    address_country: Option(String),
    endpoint: Option(String),
    contains: Option(String),
    organization: Option(String),
    address_use: Option(String),
    name: Option(String),
    near: Option(String),
    address_city: Option(String),
    status: Option(String),
  )
}

pub type Manufactureditemdefinition {
  Manufactureditemdefinition(
    identifier: Option(String),
    ingredient: Option(String),
    name: Option(String),
    dose_form: Option(String),
    status: Option(String),
  )
}

pub type Measure {
  Measure(
    date: Option(String),
    identifier: Option(String),
    successor: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    derived_from: Option(String),
    description: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    composed_of: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    depends_on: Option(String),
    effective: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Measurereport {
  Measurereport(
    date: Option(String),
    identifier: Option(String),
    period: Option(String),
    measure: Option(String),
    patient: Option(String),
    subject: Option(String),
    reporter: Option(String),
    location: Option(String),
    evaluated_resource: Option(String),
    status: Option(String),
  )
}

pub type Medication {
  Medication(
    ingredient_code: Option(String),
    identifier: Option(String),
    code: Option(String),
    ingredient: Option(String),
    form: Option(String),
    lot_number: Option(String),
    serial_number: Option(String),
    expiration_date: Option(String),
    marketingauthorizationholder: Option(String),
    status: Option(String),
  )
}

pub type Medicationadministration {
  Medicationadministration(
    date: Option(String),
    identifier: Option(String),
    request: Option(String),
    code: Option(String),
    performer: Option(String),
    performer_device_code: Option(String),
    subject: Option(String),
    medication: Option(String),
    reason_given: Option(String),
    encounter: Option(String),
    reason_given_code: Option(String),
    patient: Option(String),
    reason_not_given: Option(String),
    device: Option(String),
    status: Option(String),
  )
}

pub type Medicationdispense {
  Medicationdispense(
    identifier: Option(String),
    code: Option(String),
    performer: Option(String),
    receiver: Option(String),
    subject: Option(String),
    destination: Option(String),
    medication: Option(String),
    responsibleparty: Option(String),
    encounter: Option(String),
    type_: Option(String),
    recorded: Option(String),
    whenhandedover: Option(String),
    whenprepared: Option(String),
    prescription: Option(String),
    patient: Option(String),
    location: Option(String),
    status: Option(String),
  )
}

pub type Medicationknowledge {
  Medicationknowledge(
    product_type: Option(String),
    identifier: Option(String),
    code: Option(String),
    ingredient: Option(String),
    doseform: Option(String),
    classification_type: Option(String),
    monograph_type: Option(String),
    classification: Option(String),
    ingredient_code: Option(String),
    packaging_cost_concept: Option(String),
    source_cost: Option(String),
    monitoring_program_name: Option(String),
    monograph: Option(String),
    monitoring_program_type: Option(String),
    packaging_cost: Option(String),
    status: Option(String),
  )
}

pub type Medicationrequest {
  Medicationrequest(
    requester: Option(String),
    identifier: Option(String),
    intended_dispenser: Option(String),
    authoredon: Option(String),
    code: Option(String),
    combo_date: Option(String),
    subject: Option(String),
    medication: Option(String),
    encounter: Option(String),
    priority: Option(String),
    intent: Option(String),
    group_identifier: Option(String),
    intended_performer: Option(String),
    patient: Option(String),
    intended_performertype: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Medicationstatement {
  Medicationstatement(
    effective: Option(String),
    identifier: Option(String),
    code: Option(String),
    adherence: Option(String),
    patient: Option(String),
    subject: Option(String),
    medication: Option(String),
    encounter: Option(String),
    source: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Medicinalproductdefinition {
  Medicinalproductdefinition(
    identifier: Option(String),
    ingredient: Option(String),
    master_file: Option(String),
    contact: Option(String),
    domain: Option(String),
    name: Option(String),
    name_language: Option(String),
    type_: Option(String),
    characteristic: Option(String),
    characteristic_type: Option(String),
    product_classification: Option(String),
    status: Option(String),
  )
}

pub type Messagedefinition {
  Messagedefinition(
    date: Option(String),
    identifier: Option(String),
    parent: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    focus: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    category: Option(String),
    event: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Messageheader {
  Messageheader(
    code: Option(String),
    receiver: Option(String),
    sender: Option(String),
    author: Option(String),
    responsible: Option(String),
    destination: Option(String),
    focus: Option(String),
    response_id: Option(String),
    source: Option(String),
    event: Option(String),
    target: Option(String),
  )
}

pub type Molecularsequence {
  Molecularsequence(
    identifier: Option(String),
    subject: Option(String),
    patient: Option(String),
    focus: Option(String),
    type_: Option(String),
  )
}

pub type Namingsystem {
  Namingsystem(
    date: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    derived_from: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    type_: Option(String),
    context_quantity: Option(String),
    effective: Option(String),
    contact: Option(String),
    responsible: Option(String),
    context: Option(String),
    telecom: Option(String),
    value: Option(String),
    context_type_quantity: Option(String),
    identifier: Option(String),
    period: Option(String),
    kind: Option(String),
    version: Option(String),
    url: Option(String),
    id_type: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    status: Option(String),
  )
}

pub type Nutritionintake {
  Nutritionintake(
    date: Option(String),
    identifier: Option(String),
    nutrition: Option(String),
    code: Option(String),
    patient: Option(String),
    subject: Option(String),
    encounter: Option(String),
    source: Option(String),
    status: Option(String),
  )
}

pub type Nutritionorder {
  Nutritionorder(
    identifier: Option(String),
    group_identifier: Option(String),
    datetime: Option(String),
    provider: Option(String),
    subject: Option(String),
    patient: Option(String),
    supplement: Option(String),
    formula: Option(String),
    encounter: Option(String),
    oraldiet: Option(String),
    additive: Option(String),
    status: Option(String),
  )
}

pub type Nutritionproduct {
  Nutritionproduct(
    identifier: Option(String),
    code: Option(String),
    lot_number: Option(String),
    serial_number: Option(String),
    status: Option(String),
  )
}

pub type Observation {
  Observation(
    date: Option(String),
    combo_data_absent_reason: Option(String),
    code: Option(String),
    combo_code_value_quantity: Option(String),
    component_data_absent_reason: Option(String),
    subject: Option(String),
    value_concept: Option(String),
    value_date: Option(String),
    derived_from: Option(String),
    focus: Option(String),
    part_of: Option(String),
    component_value_canonical: Option(String),
    has_member: Option(String),
    value_reference: Option(String),
    code_value_string: Option(String),
    component_code_value_quantity: Option(String),
    based_on: Option(String),
    code_value_date: Option(String),
    patient: Option(String),
    specimen: Option(String),
    code_value_quantity: Option(String),
    component_code: Option(String),
    value_markdown: Option(String),
    combo_code_value_concept: Option(String),
    identifier: Option(String),
    component_value_reference: Option(String),
    performer: Option(String),
    combo_code: Option(String),
    method: Option(String),
    value_quantity: Option(String),
    component_value_quantity: Option(String),
    data_absent_reason: Option(String),
    combo_value_quantity: Option(String),
    encounter: Option(String),
    code_value_concept: Option(String),
    component_code_value_concept: Option(String),
    component_value_concept: Option(String),
    category: Option(String),
    device: Option(String),
    combo_value_concept: Option(String),
    value_canonical: Option(String),
    status: Option(String),
  )
}

pub type Observationdefinition {
  Observationdefinition(
    identifier: Option(String),
    code: Option(String),
    method: Option(String),
    experimental: Option(String),
    category: Option(String),
    title: Option(String),
    url: Option(String),
    status: Option(String),
  )
}

pub type Operationdefinition {
  Operationdefinition(
    date: Option(String),
    identifier: Option(String),
    code: Option(String),
    instance: Option(String),
    context_type_value: Option(String),
    kind: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    type_: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    input_profile: Option(String),
    output_profile: Option(String),
    system: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    base: Option(String),
    status: Option(String),
  )
}

pub type Operationoutcome {
  Operationoutcome
}

pub type Organization {
  Organization(
    identifier: Option(String),
    partof: Option(String),
    address: Option(String),
    address_state: Option(String),
    active: Option(String),
    type_: Option(String),
    address_postalcode: Option(String),
    address_country: Option(String),
    endpoint: Option(String),
    phonetic: Option(String),
    address_use: Option(String),
    name: Option(String),
    address_city: Option(String),
  )
}

pub type Organizationaffiliation {
  Organizationaffiliation(
    date: Option(String),
    identifier: Option(String),
    specialty: Option(String),
    role: Option(String),
    active: Option(String),
    primary_organization: Option(String),
    network: Option(String),
    endpoint: Option(String),
    phone: Option(String),
    service: Option(String),
    participating_organization: Option(String),
    location: Option(String),
    telecom: Option(String),
    email: Option(String),
  )
}

pub type Packagedproductdefinition {
  Packagedproductdefinition(
    identifier: Option(String),
    manufactured_item: Option(String),
    nutrition: Option(String),
    package: Option(String),
    name: Option(String),
    biological: Option(String),
    package_for: Option(String),
    contained_item: Option(String),
    medication: Option(String),
    device: Option(String),
    status: Option(String),
  )
}

pub type Patient {
  Patient(
    given: Option(String),
    identifier: Option(String),
    address: Option(String),
    birthdate: Option(String),
    deceased: Option(String),
    address_state: Option(String),
    gender: Option(String),
    general_practitioner: Option(String),
    link: Option(String),
    active: Option(String),
    language: Option(String),
    address_postalcode: Option(String),
    address_country: Option(String),
    death_date: Option(String),
    phonetic: Option(String),
    phone: Option(String),
    organization: Option(String),
    address_use: Option(String),
    name: Option(String),
    telecom: Option(String),
    address_city: Option(String),
    family: Option(String),
    email: Option(String),
  )
}

pub type Paymentnotice {
  Paymentnotice(
    identifier: Option(String),
    request: Option(String),
    created: Option(String),
    response: Option(String),
    reporter: Option(String),
    payment_status: Option(String),
    status: Option(String),
  )
}

pub type Paymentreconciliation {
  Paymentreconciliation(
    identifier: Option(String),
    request: Option(String),
    disposition: Option(String),
    created: Option(String),
    allocation_encounter: Option(String),
    allocation_account: Option(String),
    outcome: Option(String),
    payment_issuer: Option(String),
    requestor: Option(String),
    status: Option(String),
  )
}

pub type Permission {
  Permission(status: Option(String))
}

pub type Person {
  Person(
    identifier: Option(String),
    given: Option(String),
    address: Option(String),
    birthdate: Option(String),
    deceased: Option(String),
    address_state: Option(String),
    gender: Option(String),
    practitioner: Option(String),
    link: Option(String),
    relatedperson: Option(String),
    address_postalcode: Option(String),
    address_country: Option(String),
    death_date: Option(String),
    phonetic: Option(String),
    phone: Option(String),
    patient: Option(String),
    organization: Option(String),
    address_use: Option(String),
    name: Option(String),
    telecom: Option(String),
    address_city: Option(String),
    family: Option(String),
    email: Option(String),
  )
}

pub type Plandefinition {
  Plandefinition(
    date: Option(String),
    identifier: Option(String),
    successor: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    derived_from: Option(String),
    description: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    composed_of: Option(String),
    title: Option(String),
    type_: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    depends_on: Option(String),
    effective: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    definition: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Practitioner {
  Practitioner(
    given: Option(String),
    identifier: Option(String),
    address: Option(String),
    deceased: Option(String),
    address_state: Option(String),
    gender: Option(String),
    qualification_period: Option(String),
    active: Option(String),
    address_postalcode: Option(String),
    address_country: Option(String),
    death_date: Option(String),
    phonetic: Option(String),
    phone: Option(String),
    address_use: Option(String),
    name: Option(String),
    telecom: Option(String),
    address_city: Option(String),
    communication: Option(String),
    family: Option(String),
    email: Option(String),
  )
}

pub type Practitionerrole {
  Practitionerrole(
    date: Option(String),
    identifier: Option(String),
    specialty: Option(String),
    role: Option(String),
    practitioner: Option(String),
    active: Option(String),
    characteristic: Option(String),
    endpoint: Option(String),
    phone: Option(String),
    service: Option(String),
    organization: Option(String),
    location: Option(String),
    telecom: Option(String),
    communication: Option(String),
    email: Option(String),
  )
}

pub type Procedure {
  Procedure(
    date: Option(String),
    identifier: Option(String),
    code: Option(String),
    performer: Option(String),
    subject: Option(String),
    instantiates_canonical: Option(String),
    part_of: Option(String),
    encounter: Option(String),
    reason_code: Option(String),
    based_on: Option(String),
    patient: Option(String),
    reason_reference: Option(String),
    report: Option(String),
    instantiates_uri: Option(String),
    location: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Provenance {
  Provenance(
    agent_type: Option(String),
    agent: Option(String),
    signature_type: Option(String),
    activity: Option(String),
    encounter: Option(String),
    recorded: Option(String),
    when: Option(String),
    target: Option(String),
    based_on: Option(String),
    patient: Option(String),
    location: Option(String),
    agent_role: Option(String),
    entity: Option(String),
  )
}

pub type Questionnaire {
  Questionnaire(
    date: Option(String),
    identifier: Option(String),
    combo_code: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    effective: Option(String),
    subject_type: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    questionnaire_code: Option(String),
    definition: Option(String),
    context_type_quantity: Option(String),
    item_code: Option(String),
    status: Option(String),
  )
}

pub type Questionnaireresponse {
  Questionnaireresponse(
    authored: Option(String),
    identifier: Option(String),
    questionnaire: Option(String),
    based_on: Option(String),
    author: Option(String),
    patient: Option(String),
    subject: Option(String),
    part_of: Option(String),
    encounter: Option(String),
    source: Option(String),
    item_subject: Option(String),
    status: Option(String),
  )
}

pub type Regulatedauthorization {
  Regulatedauthorization(
    identifier: Option(String),
    subject: Option(String),
    case_type: Option(String),
    holder: Option(String),
    region: Option(String),
    case_: Option(String),
    status: Option(String),
  )
}

pub type Relatedperson {
  Relatedperson(
    identifier: Option(String),
    given: Option(String),
    address: Option(String),
    birthdate: Option(String),
    address_state: Option(String),
    gender: Option(String),
    active: Option(String),
    address_postalcode: Option(String),
    address_country: Option(String),
    phonetic: Option(String),
    phone: Option(String),
    patient: Option(String),
    address_use: Option(String),
    name: Option(String),
    telecom: Option(String),
    address_city: Option(String),
    family: Option(String),
    relationship: Option(String),
    email: Option(String),
  )
}

pub type Requestorchestration {
  Requestorchestration(
    authored: Option(String),
    identifier: Option(String),
    code: Option(String),
    author: Option(String),
    subject: Option(String),
    instantiates_canonical: Option(String),
    encounter: Option(String),
    priority: Option(String),
    intent: Option(String),
    participant: Option(String),
    group_identifier: Option(String),
    based_on: Option(String),
    patient: Option(String),
    instantiates_uri: Option(String),
    status: Option(String),
  )
}

pub type Requirements {
  Requirements(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    derived_from: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    actor: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Researchstudy {
  Researchstudy(
    date: Option(String),
    objective_type: Option(String),
    study_design: Option(String),
    description: Option(String),
    eligibility: Option(String),
    part_of: Option(String),
    title: Option(String),
    progress_status_state_period_actual: Option(String),
    recruitment_target: Option(String),
    protocol: Option(String),
    classifier: Option(String),
    keyword: Option(String),
    focus_code: Option(String),
    phase: Option(String),
    identifier: Option(String),
    progress_status_state_actual: Option(String),
    focus_reference: Option(String),
    objective_description: Option(String),
    progress_status_state_period: Option(String),
    condition: Option(String),
    site: Option(String),
    name: Option(String),
    recruitment_actual: Option(String),
    region: Option(String),
    status: Option(String),
  )
}

pub type Researchsubject {
  Researchsubject(
    date: Option(String),
    identifier: Option(String),
    subject_state: Option(String),
    study: Option(String),
    subject: Option(String),
    patient: Option(String),
    status: Option(String),
  )
}

pub type Riskassessment {
  Riskassessment(
    date: Option(String),
    identifier: Option(String),
    condition: Option(String),
    performer: Option(String),
    method: Option(String),
    patient: Option(String),
    probability: Option(String),
    subject: Option(String),
    risk: Option(String),
    encounter: Option(String),
  )
}

pub type Schedule {
  Schedule(
    actor: Option(String),
    date: Option(String),
    identifier: Option(String),
    specialty: Option(String),
    service_category: Option(String),
    service_type: Option(String),
    name: Option(String),
    active: Option(String),
    service_type_reference: Option(String),
  )
}

pub type Searchparameter {
  Searchparameter(
    date: Option(String),
    identifier: Option(String),
    code: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    derived_from: Option(String),
    description: Option(String),
    context_type: Option(String),
    type_: Option(String),
    version: Option(String),
    url: Option(String),
    target: Option(String),
    context_quantity: Option(String),
    component: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    base: Option(String),
    status: Option(String),
  )
}

pub type Servicerequest {
  Servicerequest(
    authored: Option(String),
    requester: Option(String),
    identifier: Option(String),
    performer: Option(String),
    requisition: Option(String),
    replaces: Option(String),
    subject: Option(String),
    instantiates_canonical: Option(String),
    encounter: Option(String),
    occurrence: Option(String),
    priority: Option(String),
    intent: Option(String),
    performer_type: Option(String),
    body_structure: Option(String),
    based_on: Option(String),
    code_reference: Option(String),
    patient: Option(String),
    specimen: Option(String),
    code_concept: Option(String),
    instantiates_uri: Option(String),
    body_site: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Slot {
  Slot(
    identifier: Option(String),
    schedule: Option(String),
    specialty: Option(String),
    service_category: Option(String),
    appointment_type: Option(String),
    service_type: Option(String),
    start: Option(String),
    service_type_reference: Option(String),
    status: Option(String),
  )
}

pub type Specimen {
  Specimen(
    identifier: Option(String),
    parent: Option(String),
    bodysite: Option(String),
    patient: Option(String),
    subject: Option(String),
    collected: Option(String),
    accession: Option(String),
    procedure: Option(String),
    type_: Option(String),
    collector: Option(String),
    container_device: Option(String),
    status: Option(String),
  )
}

pub type Specimendefinition {
  Specimendefinition(
    container: Option(String),
    identifier: Option(String),
    is_derived: Option(String),
    experimental: Option(String),
    type_tested: Option(String),
    title: Option(String),
    type_: Option(String),
    url: Option(String),
    status: Option(String),
  )
}

pub type Structuredefinition {
  Structuredefinition(
    date: Option(String),
    context_type_value: Option(String),
    ext_context_type: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    experimental: Option(String),
    title: Option(String),
    type_: Option(String),
    context_quantity: Option(String),
    path: Option(String),
    base_path: Option(String),
    context: Option(String),
    keyword: Option(String),
    context_type_quantity: Option(String),
    ext_context_expression: Option(String),
    identifier: Option(String),
    valueset: Option(String),
    kind: Option(String),
    abstract: Option(String),
    version: Option(String),
    url: Option(String),
    ext_context: Option(String),
    name: Option(String),
    publisher: Option(String),
    derivation: Option(String),
    base: Option(String),
    status: Option(String),
  )
}

pub type Structuremap {
  Structuremap(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Subscription {
  Subscription(
    owner: Option(String),
    identifier: Option(String),
    payload: Option(String),
    contact: Option(String),
    name: Option(String),
    topic: Option(String),
    filter_value: Option(String),
    type_: Option(String),
    content_level: Option(String),
    url: Option(String),
    status: Option(String),
  )
}

pub type Subscriptionstatus {
  Subscriptionstatus
}

pub type Subscriptiontopic {
  Subscriptiontopic(
    date: Option(String),
    effective: Option(String),
    identifier: Option(String),
    resource: Option(String),
    derived_or_self: Option(String),
    event: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    status: Option(String),
    trigger_description: Option(String),
  )
}

pub type Substance {
  Substance(
    identifier: Option(String),
    code: Option(String),
    code_reference: Option(String),
    quantity: Option(String),
    substance_reference: Option(String),
    expiry: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Substancedefinition {
  Substancedefinition(
    identifier: Option(String),
    code: Option(String),
    domain: Option(String),
    name: Option(String),
    classification: Option(String),
  )
}

pub type Substancenucleicacid {
  Substancenucleicacid
}

pub type Substancepolymer {
  Substancepolymer
}

pub type Substanceprotein {
  Substanceprotein
}

pub type Substancereferenceinformation {
  Substancereferenceinformation
}

pub type Substancesourcematerial {
  Substancesourcematerial
}

pub type Supplydelivery {
  Supplydelivery(
    identifier: Option(String),
    receiver: Option(String),
    patient: Option(String),
    supplier: Option(String),
    status: Option(String),
  )
}

pub type Supplyrequest {
  Supplyrequest(
    date: Option(String),
    requester: Option(String),
    identifier: Option(String),
    patient: Option(String),
    subject: Option(String),
    supplier: Option(String),
    category: Option(String),
    status: Option(String),
  )
}

pub type Task {
  Task(
    owner: Option(String),
    requestedperformer_reference: Option(String),
    requester: Option(String),
    business_status: Option(String),
    identifier: Option(String),
    period: Option(String),
    code: Option(String),
    performer: Option(String),
    subject: Option(String),
    focus: Option(String),
    part_of: Option(String),
    encounter: Option(String),
    authored_on: Option(String),
    priority: Option(String),
    intent: Option(String),
    output: Option(String),
    actor: Option(String),
    group_identifier: Option(String),
    based_on: Option(String),
    patient: Option(String),
    modified: Option(String),
    status: Option(String),
  )
}

pub type Terminologycapabilities {
  Terminologycapabilities(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    context_type: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Testplan {
  Testplan(
    identifier: Option(String),
    scope: Option(String),
    url: Option(String),
    status: Option(String),
  )
}

pub type Testreport {
  Testreport(
    result: Option(String),
    identifier: Option(String),
    tester: Option(String),
    testscript: Option(String),
    issued: Option(String),
    participant: Option(String),
    status: Option(String),
  )
}

pub type Testscript {
  Testscript(
    date: Option(String),
    identifier: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    testscript_capability: Option(String),
    context_type: Option(String),
    scope_artifact_phase: Option(String),
    title: Option(String),
    scope_artifact_conformance: Option(String),
    version: Option(String),
    scope_artifact: Option(String),
    url: Option(String),
    context_quantity: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Transport {
  Transport(identifier: Option(String), status: Option(String))
}

pub type Valueset {
  Valueset(
    date: Option(String),
    identifier: Option(String),
    code: Option(String),
    context_type_value: Option(String),
    jurisdiction: Option(String),
    description: Option(String),
    derived_from: Option(String),
    context_type: Option(String),
    predecessor: Option(String),
    title: Option(String),
    version: Option(String),
    url: Option(String),
    expansion: Option(String),
    reference: Option(String),
    context_quantity: Option(String),
    effective: Option(String),
    context: Option(String),
    name: Option(String),
    publisher: Option(String),
    topic: Option(String),
    context_type_quantity: Option(String),
    status: Option(String),
  )
}

pub type Verificationresult {
  Verificationresult(
    status_date: Option(String),
    primarysource_who: Option(String),
    primarysource_date: Option(String),
    validator_organization: Option(String),
    attestation_method: Option(String),
    attestation_onbehalfof: Option(String),
    target: Option(String),
    attestation_who: Option(String),
    primarysource_type: Option(String),
    status: Option(String),
  )
}

pub type Visionprescription {
  Visionprescription(
    prescriber: Option(String),
    identifier: Option(String),
    patient: Option(String),
    datewritten: Option(String),
    encounter: Option(String),
    status: Option(String),
  )
}

pub fn account_new() {
  Account(None, None, None, None, None, None, None, None, None, None)
}

pub fn activitydefinition_new() {
  Activitydefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn actordefinition_new() {
  Actordefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn administrableproductdefinition_new() {
  Administrableproductdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn adverseevent_new() {
  Adverseevent(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn allergyintolerance_new() {
  Allergyintolerance(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn appointment_new() {
  Appointment(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn appointmentresponse_new() {
  Appointmentresponse(None, None, None, None, None, None, None, None)
}

pub fn artifactassessment_new() {
  Artifactassessment(None, None)
}

pub fn auditevent_new() {
  Auditevent(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn basic_new() {
  Basic(None, None, None, None, None, None)
}

pub fn binary_new() {
  Binary
}

pub fn biologicallyderivedproduct_new() {
  Biologicallyderivedproduct(None, None, None, None, None, None, None, None)
}

pub fn biologicallyderivedproductdispense_new() {
  Biologicallyderivedproductdispense(None, None, None, None, None)
}

pub fn bodystructure_new() {
  Bodystructure(None, None, None, None, None)
}

pub fn bundle_new() {
  Bundle(None, None, None, None, None)
}

pub fn capabilitystatement_new() {
  Capabilitystatement(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn careplan_new() {
  Careplan(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn careteam_new() {
  Careteam(None, None, None, None, None, None, None, None)
}

pub fn chargeitem_new() {
  Chargeitem(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn chargeitemdefinition_new() {
  Chargeitemdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn citation_new() {
  Citation(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn claim_new() {
  Claim(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn claimresponse_new() {
  Claimresponse(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn clinicalimpression_new() {
  Clinicalimpression(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn clinicalusedefinition_new() {
  Clinicalusedefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn codesystem_new() {
  Codesystem(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn communication_new() {
  Communication(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn communicationrequest_new() {
  Communicationrequest(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn compartmentdefinition_new() {
  Compartmentdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn composition_new() {
  Composition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn conceptmap_new() {
  Conceptmap(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn condition_new() {
  Condition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn conditiondefinition_new() {
  Conditiondefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn consent_new() {
  Consent(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn contract_new() {
  Contract(None, None, None, None, None, None, None, None, None, None)
}

pub fn coverage_new() {
  Coverage(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn coverageeligibilityrequest_new() {
  Coverageeligibilityrequest(None, None, None, None, None, None, None)
}

pub fn coverageeligibilityresponse_new() {
  Coverageeligibilityresponse(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn detectedissue_new() {
  Detectedissue(None, None, None, None, None, None, None, None, None)
}

pub fn device_new() {
  Device(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn deviceassociation_new() {
  Deviceassociation(None, None, None, None, None, None)
}

pub fn devicedefinition_new() {
  Devicedefinition(None, None, None, None, None, None, None)
}

pub fn devicedispense_new() {
  Devicedispense(None, None, None, None, None)
}

pub fn devicemetric_new() {
  Devicemetric(None, None, None, None)
}

pub fn devicerequest_new() {
  Devicerequest(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn deviceusage_new() {
  Deviceusage(None, None, None, None)
}

pub fn diagnosticreport_new() {
  Diagnosticreport(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn documentreference_new() {
  Documentreference(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn encounter_new() {
  Encounter(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn encounterhistory_new() {
  Encounterhistory(None, None, None, None, None)
}

pub fn endpoint_new() {
  Endpoint(None, None, None, None, None, None)
}

pub fn enrollmentrequest_new() {
  Enrollmentrequest(None, None, None, None)
}

pub fn enrollmentresponse_new() {
  Enrollmentresponse(None, None, None)
}

pub fn episodeofcare_new() {
  Episodeofcare(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn eventdefinition_new() {
  Eventdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn evidence_new() {
  Evidence(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn evidencereport_new() {
  Evidencereport(None, None, None, None, None, None, None, None, None)
}

pub fn evidencevariable_new() {
  Evidencevariable(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn examplescenario_new() {
  Examplescenario(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn explanationofbenefit_new() {
  Explanationofbenefit(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn familymemberhistory_new() {
  Familymemberhistory(None, None, None, None, None, None, None, None, None)
}

pub fn flag_new() {
  Flag(None, None, None, None, None, None, None, None)
}

pub fn formularyitem_new() {
  Formularyitem(None, None)
}

pub fn genomicstudy_new() {
  Genomicstudy(None, None, None, None, None)
}

pub fn goal_new() {
  Goal(None, None, None, None, None, None, None, None, None, None, None)
}

pub fn graphdefinition_new() {
  Graphdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn group_new() {
  Group(None, None, None, None, None, None, None, None, None, None, None, None)
}

pub fn guidanceresponse_new() {
  Guidanceresponse(None, None, None, None, None)
}

pub fn healthcareservice_new() {
  Healthcareservice(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn imagingselection_new() {
  Imagingselection(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn imagingstudy_new() {
  Imagingstudy(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn immunization_new() {
  Immunization(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn immunizationevaluation_new() {
  Immunizationevaluation(None, None, None, None, None, None, None)
}

pub fn immunizationrecommendation_new() {
  Immunizationrecommendation(None, None, None, None, None, None, None, None)
}

pub fn implementationguide_new() {
  Implementationguide(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn ingredient_new() {
  Ingredient(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn insuranceplan_new() {
  Insuranceplan(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn inventoryitem_new() {
  Inventoryitem(None, None, None, None)
}

pub fn inventoryreport_new() {
  Inventoryreport(None, None, None, None)
}

pub fn invoice_new() {
  Invoice(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn library_new() {
  Library(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn linkage_new() {
  Linkage(None, None, None)
}

pub fn listfhir_new() {
  Listfhir(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn location_new() {
  Location(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn manufactureditemdefinition_new() {
  Manufactureditemdefinition(None, None, None, None, None)
}

pub fn measure_new() {
  Measure(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn measurereport_new() {
  Measurereport(None, None, None, None, None, None, None, None, None, None)
}

pub fn medication_new() {
  Medication(None, None, None, None, None, None, None, None, None, None)
}

pub fn medicationadministration_new() {
  Medicationadministration(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn medicationdispense_new() {
  Medicationdispense(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn medicationknowledge_new() {
  Medicationknowledge(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn medicationrequest_new() {
  Medicationrequest(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn medicationstatement_new() {
  Medicationstatement(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn medicinalproductdefinition_new() {
  Medicinalproductdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn messagedefinition_new() {
  Messagedefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn messageheader_new() {
  Messageheader(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn molecularsequence_new() {
  Molecularsequence(None, None, None, None, None)
}

pub fn namingsystem_new() {
  Namingsystem(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn nutritionintake_new() {
  Nutritionintake(None, None, None, None, None, None, None, None, None)
}

pub fn nutritionorder_new() {
  Nutritionorder(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn nutritionproduct_new() {
  Nutritionproduct(None, None, None, None, None)
}

pub fn observation_new() {
  Observation(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn observationdefinition_new() {
  Observationdefinition(None, None, None, None, None, None, None, None)
}

pub fn operationdefinition_new() {
  Operationdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn operationoutcome_new() {
  Operationoutcome
}

pub fn organization_new() {
  Organization(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn organizationaffiliation_new() {
  Organizationaffiliation(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn packagedproductdefinition_new() {
  Packagedproductdefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn patient_new() {
  Patient(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn paymentnotice_new() {
  Paymentnotice(None, None, None, None, None, None, None)
}

pub fn paymentreconciliation_new() {
  Paymentreconciliation(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn permission_new() {
  Permission(None)
}

pub fn person_new() {
  Person(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn plandefinition_new() {
  Plandefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn practitioner_new() {
  Practitioner(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn practitionerrole_new() {
  Practitionerrole(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn procedure_new() {
  Procedure(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn provenance_new() {
  Provenance(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn questionnaire_new() {
  Questionnaire(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn questionnaireresponse_new() {
  Questionnaireresponse(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn regulatedauthorization_new() {
  Regulatedauthorization(None, None, None, None, None, None, None)
}

pub fn relatedperson_new() {
  Relatedperson(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn requestorchestration_new() {
  Requestorchestration(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn requirements_new() {
  Requirements(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn researchstudy_new() {
  Researchstudy(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn researchsubject_new() {
  Researchsubject(None, None, None, None, None, None, None)
}

pub fn riskassessment_new() {
  Riskassessment(None, None, None, None, None, None, None, None, None, None)
}

pub fn schedule_new() {
  Schedule(None, None, None, None, None, None, None, None, None)
}

pub fn searchparameter_new() {
  Searchparameter(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn servicerequest_new() {
  Servicerequest(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn slot_new() {
  Slot(None, None, None, None, None, None, None, None, None)
}

pub fn specimen_new() {
  Specimen(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn specimendefinition_new() {
  Specimendefinition(None, None, None, None, None, None, None, None, None)
}

pub fn structuredefinition_new() {
  Structuredefinition(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn structuremap_new() {
  Structuremap(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn subscription_new() {
  Subscription(None, None, None, None, None, None, None, None, None, None, None)
}

pub fn subscriptionstatus_new() {
  Subscriptionstatus
}

pub fn subscriptiontopic_new() {
  Subscriptiontopic(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn substance_new() {
  Substance(None, None, None, None, None, None, None, None)
}

pub fn substancedefinition_new() {
  Substancedefinition(None, None, None, None, None)
}

pub fn substancenucleicacid_new() {
  Substancenucleicacid
}

pub fn substancepolymer_new() {
  Substancepolymer
}

pub fn substanceprotein_new() {
  Substanceprotein
}

pub fn substancereferenceinformation_new() {
  Substancereferenceinformation
}

pub fn substancesourcematerial_new() {
  Substancesourcematerial
}

pub fn supplydelivery_new() {
  Supplydelivery(None, None, None, None, None)
}

pub fn supplyrequest_new() {
  Supplyrequest(None, None, None, None, None, None, None, None)
}

pub fn task_new() {
  Task(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn terminologycapabilities_new() {
  Terminologycapabilities(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn testplan_new() {
  Testplan(None, None, None, None)
}

pub fn testreport_new() {
  Testreport(None, None, None, None, None, None, None)
}

pub fn testscript_new() {
  Testscript(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn transport_new() {
  Transport(None, None)
}

pub fn valueset_new() {
  Valueset(
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
    None,
  )
}

pub fn verificationresult_new() {
  Verificationresult(None, None, None, None, None, None, None, None, None, None)
}

pub fn visionprescription_new() {
  Visionprescription(None, None, None, None, None, None)
}
