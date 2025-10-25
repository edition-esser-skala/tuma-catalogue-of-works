\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    e'4. h8 c4 h16 a g fis
    g fis e8 r16 h' h e e dis dis8 r16 h h fis'
    fis e e8 r16 e e h' c h a g a g fis e \gotoBar "9"
    e,4 r r2
    R1*3
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    g'4 e2 dis4
    e r8 g fis4 r8 fis
    g g16 a h4 e, r \gotoBar "9"
    e4 r r2
    R1*3
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*3 \gotoBar "9"
    e'4.^\solo h8 c4 h16[ a] g[ fis]
    g[ fis] e8 r e' e16[ dis] dis8 r d
    d16 cis cis8 r c h a16 g fis8 e
    dis4 r r2
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne -- di -- ctus, qui
  ve -- nit, qui ve -- nit in
  no -- mi -- ne, in no -- mi -- ne Do -- mi --
  ni,
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*3 \gotoBar "9"
    R1*3
    h'4.^\solo fis8 g4 fis16[ e] d[ cis]
  }
}

BassoLyrics = \lyricmode {
  Be -- ne -- di -- ctus, qui
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    e8-\solo fis g gis a a, h4
    e8 fis g e h' h, dis h
    e e g e a h c a \gotoBar "9"
    e fis g gis a a, h dis
    e fis g e h'8. a16 gis8 e
    a a16 g fis8 d! g g, a4
    h8 cis d! dis e cis fis fis,
  }
}

BassFigures = \figuremode {
  r4 <6>2 <_+>4
  r2 <5 4>8 <\t _+> <6>4
  <9>8 <8>4. r4 <6>8 q16 <5>
  r1
  r2 <5 4>8 <\t _+> <6> <7 _+>
  <5 4> <\t _+> <6> <7 _+>4. <6>8 <5>
  <_+>2 <6\\ 5>4 <_+>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
