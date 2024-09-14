\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    \tuplet 3/2 8 { g''16 a h } e,4. \tuplet 3/2 8 { a16 h c } e,4.
    \tuplet 3/2 8 { g16 a h } e,4. \tuplet 3/2 8 { fis16 g a } h,4 a'8 \gotoBar "7"
    e,4 r8 \tuplet 3/2 8 { g'16\p a h } e,4. \tuplet 3/2 8 { a16 h c }
    e,4. g8 fis4. \tuplet 3/2 8 { dis16[ e fis] }
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    \tuplet 3/2 8 { g''16 a h } e,4. \tuplet 3/2 8 { a16 h c } e,4.
    \tuplet 3/2 8 { g16 a h } e,4. \tuplet 3/2 8 { fis16 g a } h,4 a'8 \gotoBar "7"
    e,4 r8 \tuplet 3/2 8 { g'16\p a h } e,4. \tuplet 3/2 8 { a16 h c }
    e,4. g8 fis4. \tuplet 3/2 8 { dis16[ e fis] }
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*2 \gotoBar "7"
    h'2^\solo c
    h4 e8 e e16[ dis fis e] dis[ c! h a]
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui ve -- \hy
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Andante"
    r8 e-\solo g e r a c a
    r g e g r dis h dis \gotoBar "7"
    e e g e r a c a
    r e g e h'4 h,
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r2 <5 4>4 <\t _+>
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
