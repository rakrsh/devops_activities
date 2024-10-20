describe('My First Test', () => {
    it('Does not do much!', () => {
      expect(true).to.equal(true)
    })
  })
  
  describe('Visit Google', () => {
    it('Visits Google and checks the title', () => {
      cy.visit('https://www.google.com')
      cy.title().should('include', 'Google')
    })
  })
  