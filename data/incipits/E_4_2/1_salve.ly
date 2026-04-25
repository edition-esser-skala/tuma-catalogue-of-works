\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Andante"
    es'4( b8) r r4
    es( g,8) r r4
    es' f,8( c') b( as)
    g32 f es16 r8 r4 r \gotoBar "27"
    r4 r8 g'4\p as16 b
    es,,4 r8 es'4 f16 g
    c,,4 c' d\trill
    es8 r r4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Andante"
    g'4 r r
    g r r
    f2 d4
    es8 r r4 r \gotoBar "27"
    r r8 es'4\p f16( g)
    g,4 r8 c4 d16( es)
    f,2.\trill
    g8 r r4 r
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key es \major \time 3/4 \tempoMarkup "Andante"
    b4 r8 g' g as16( b)
    es,4 r8 es es f16( g)
    c,4 r r
    r8 b es16-! es( f g) f-! f( g as) \gotoBar "27"
    R2.*3
    r8 b, es16-! es( f g) f-! f( g as)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key es \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    R2.*4 \gotoBar "27"
    es'4^\solo b r
    es g, r
    es' f,8[ c'] b[ as]
    g[ f] es4 r
  }
}

SopranoLyrics = \lyricmode {
  Sal -- ve,
  sal -- ve,
  sal -- ve Re --
  gi -- na,
}

Organo = {
  \relative c {
    \clef bass
    \key es \major \time 3/4 \tempoMarkup "Andante"
    \mvTr es4 r8 es es d
    c4 r8 c c b
    as2 b4
    es r d \gotoBar "27"
    es4 r8 es es d
    c4 r8 c c b
    as2 b4
    es r d
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
  >>
}
