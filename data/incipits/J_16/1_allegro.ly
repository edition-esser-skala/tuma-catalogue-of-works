\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Allegro"
    d8. d'16 d,8.[ d16 d8. d16]
    d8. a''16 g8.[ fis16 e8. d16]
    cis8. a16 a,8.[ a16 a8. a16]
    a8. d''16 cis8.[ h16 a8. g16]
    fis8. d16 d,8.[ d16 d8. d16]
    d8. a''16 g8.[ fis16 e8. d16]
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Allegro"
    d8. d'16 d,8.[ d16 d8. d16]
    d4 r8. a''16[ g8. fis16]
    e8. a,16 a,8.[ a16 a8. a16]
    a4 r8. d''16[ cis8. h16]
    a8. d,16 d,8.[ d16 d8. d16]
    d4 r8. a''16[ g8. fis16]
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key d \major \time 3/4 \tempoMarkup "Allegro"
    d8. d'16 d,8.[ d16 d8. d16]
    d4 r r
    r8. a'16 a,8.[ a16 a8. a16]
    a4 r r
    r8. d'16 d,8.[ d16 d8. d16]
    d4 r r
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key d \major \time 3/4 \tempoMarkup "Allegro"
    d8. d'16 d,8.[ d16 d8. d16]
    d4 r r
    r8. a'16 a,8.[ a16 a8. a16]
    a4 r r
    r8. d'16 d,8.[ d16 d8. d16]
    d4 r r
  }
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
  >>
}
