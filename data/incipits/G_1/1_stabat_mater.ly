\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \tempoMarkup "Larghetto"
    d4. d8 a'4 a
    b a8 g a4 d,8 d'~
    d4 cis d c8 b
    a2 r
    R1
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \tempoMarkup "Larghetto"
    R1
    r2 d,4. d8
    a'4. a8 b4 a8 g
    a a d d d d cis8. cis16
    d4 d c d8 e
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \tempoMarkup "Larghetto"
    R1
    r2 d,4. d8
    a'4. a8 b4 a8 g
    a a d d d d cis8. cis16
    d4 d c d8 e
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Larghetto"
    R1*2
    a2 d4 e
    f e8 d e a, a'4
    f e8 d e a f e
  }
}

Violino = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "Larghetto"
    d4. d8 a'4 a
    b a8 g a4 d,8 d'~
    d4 cis d c8 b
    a2 r
    R1
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \tempoMarkup "Larghetto"
    R1
    r2 d,4. d8
    a'4. a8 b4 a8 g
    a a d d d d cis8. cis16
    d4 d c d8 e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    d4.^\tutti d8 a'4 a
    b a8[ g] a4 d,8 d'~
    d4 cis d c8[ b]
    a2 r
    R1
  }
}

SopranoLyrics = \lyricmode {
  Sta -- bat ma -- ter
  do -- lo -- ro -- sa, do --
  lo -- ro -- _
  sa.
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    r2 a4.^\tutti a8
    d4 e f e8[ d]
    e a, e' a f f g8. g16
    c,4 r e4. a8
    a4 g8[ f] g e f g
  }
}

AltoLyrics = \lyricmode {
  Iux -- ta
  cru -- cem la -- cry --
  mo -- sa, dum pen -- de -- bat fi -- li --
  us. Quae mae --
  re -- _ _ bat et "do -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1
    r2 d,4. d8
    a'4. a8 b4 a8[ g]
    a a d d d d cis8. cis16
    d4 d c d8[ e]
  }
}

TenoreLyrics = \lyricmode {
  Cu -- ius
  a -- ni -- mam ge --
  men -- tem, con -- tri -- stan -- tem et do --
  len -- tem per -- "trans -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2
    a4. a8 d4 e
    f e8[ d] e a, a' a
    f f e d e a, f' e
  }
}

BassoLyrics = \lyricmode {
  O quam tri -- stis
  et af -- fli -- cta fu -- it
  il -- la be -- ne -- di -- cta ma -- ter
}

Organo = {
  \relative c {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "Larghetto"
    << {
      d'2 a'4 a
      b a8 g
    } \\ {
      r2 a,
      d4 e
    } >> \clef tenor d,2
    \clef bass a d4 e
    f e8 d e a, a'4
    f e8 d e a f e
  }
}

BassFigures = \figuremode {
  r1
  r
  <4>4 <_+> r <6!>8 <5>
  r2 <7>8 <\t> <_+>4
  <6>2 <6!>4 r8 <6\\>
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = "vl"
        \Violino
      }
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

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
