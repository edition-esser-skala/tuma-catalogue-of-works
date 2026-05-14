\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    r8 \mvTr a''\p-\markup \remark "sempre" cis,( d)
    r b' fis( g)
    r e g,( a)
    f d d'16( cis) cis8-!
    c h e16( dis) dis8-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    r8 \mvTr a''\p-\markup \remark "sempre" cis,( d)
    r b' fis( g)
    r e g,( a)
    f d r4
    a'8 g r4
  }
}

Viola = {
  \relative c' {
    \clef alto
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    \mvTr f4\p-\markup \remark "sempre" g8 a
    d,4 c8 d
    e2
    a,4 r
    fis'8 d r4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \twofourtime \key d \dorian \time 2/4 \tempoMarkup "Andante"
    \mvTr d4\p-\markup \remark "sempre" e8 f
    g4 a8 b
    cis,2
    d4 r
    d8 g, r4
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
