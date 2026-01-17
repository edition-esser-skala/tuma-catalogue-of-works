\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    s1*6
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    d4^\solo cis d8 a b a16[ g]
    a8. d,16 d8 d g16[ a] b8 b[ a16] g
    f[ e] d8 r4 r2
    R1
    r2 d'4 cis
    d8 a b a16[ g] a8. d,16 d8 a'
  }
}

TenoreLyrics = \lyricmode {
  Con -- fi -- te -- bor ti -- bi,
  Do -- mi -- ne, in to -- to cor -- de
  me -- o,

  con -- fi --
  te -- bor ti -- bi, Do -- mi -- ne, in
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    s1*6
  }
}

\score {
  <<
    \new Staff \with { \override VerticalAxisGroup.remove-empty = ##f } {
      \set Staff.instrumentName = "trb 1"
      \TromboneI
    }
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
    >>
    \new StaffGroup <<
      \new Staff \with { \override VerticalAxisGroup.remove-empty = ##f } {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
  >>
}
