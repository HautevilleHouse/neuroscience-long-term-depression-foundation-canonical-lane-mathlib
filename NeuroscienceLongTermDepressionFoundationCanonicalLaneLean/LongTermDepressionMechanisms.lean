import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure LongTermDepressionMechanisms where
  calciumSignaling : Type u
  glutamateReceptors : Type v
  secondMessengers : Type w
  proteinPhosphatases : Prop
  ampaReceptorEndocytosis : Prop
  nmdaReceptorDependence : Prop
  mgluRPathways : Prop
  proteinSynthesis : Prop
  structuralPlasticity : Prop

structure LongTermDepressionMechanismsEvidence (L : LongTermDepressionMechanisms) where
  proteinPhosphatasesClosed : L.proteinPhosphatases
  ampaReceptorEndocytosisClosed : L.ampaReceptorEndocytosis
  nmdaReceptorDependenceClosed : L.nmdaReceptorDependence
  mgluRPathwaysClosed : L.mgluRPathways
  proteinSynthesisClosed : L.proteinSynthesis
  structuralPlasticityClosed : L.structuralPlasticity

def LongTermDepressionMechanismsClosed (L : LongTermDepressionMechanisms) : Prop :=
  L.proteinPhosphatases ∧ L.ampaReceptorEndocytosis ∧ L.nmdaReceptorDependence ∧ L.mgluRPathways ∧ L.proteinSynthesis ∧ L.structuralPlasticity

theorem long_term_depression_mechanisms_closed_from_evidence (L : LongTermDepressionMechanisms) (Ev : LongTermDepressionMechanismsEvidence L) :
    LongTermDepressionMechanismsClosed L := by
  exact And.intro Ev.proteinPhosphatasesClosed
    (And.intro Ev.ampaReceptorEndocytosisClosed
      (And.intro Ev.nmdaReceptorDependenceClosed
        (And.intro Ev.mgluRPathwaysClosed
          (And.intro Ev.proteinSynthesisClosed Ev.structuralPlasticityClosed))))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse
