\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "Allegro moderato"
    d4\f r r2
    r4 d\p r d
    d4.\f d8 cis8. cis16 cis4
    r2 a'4. a8
    e f e4 d r
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "Allegro moderato"
    d4\f r r2
    r4 a\p r b
    h4.\f h8 h8. a16 a4
    r2 cis8( d) cis( h)
    a a b a a4 r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro moderato"
    <a f' d'>4\f r r2
    r4 f''\p r f,
    r f\f e8. e16 e4
    e'8( f) e( d) cis-! a-! r4
    cis8 d4 cis8 d a g f16 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \dorian \time 4/4 \tempoMarkup "Allegro moderato"
    <a f' d'>4\f r r2
    r4 d'\p r d,
    r d\f cis8. cis16 cis4
    cis'8( d) cis( h) a4 r
    e8 f e4 d8 f e d16 cis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
    r4 d'8\f d d,4 d
    f\p r f r
    f4.\f f8 e8. e16 e4
    r2 e'8[ f] e[ d]
    cis d d[ cis] d4 r
  }
}

SopranoLyrics = \lyricmode {
  Et in ter -- ra
  pax, pax,
  pax ho -- mi -- ni -- bus
  bo -- nae
  vo -- lun -- ta -- tis.
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
    r4 d'8\f d d,4 d
    d\p r d r
    d4.\f d8 cis8. cis16 cis4
    r2 a'4. a8
    e f e4 d r
  }
}

AltoLyrics = \lyricmode {
  Et in ter -- ra
  pax, pax,
  pax ho -- mi -- ni -- bus
  bo -- nae
  vo -- lun -- ta -- tis.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
    r4 d8\f d d,4 d
    a'\p r b r
    h4.\f h8 h8. a16 a4
    r2 cis8[ d] cis[ h]
    a a b[ a] a4 r
  }
}

TenoreLyrics = \lyricmode {
  Et in ter -- ra
  pax, pax,
  pax ho -- mi -- ni -- bus
  bo -- nae
  vo -- lun -- ta -- tis.
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \autoBeamOff \tempoMarkup "Allegro moderato"
    r4 d'8\f d d,4 d
    d\p r b r
    gis4.\f gis8 a8. a16 a4
    r2 a'4. a8
    a f g[ a] d,4 r
  }
}

BassoLyrics = \lyricmode {
  Et in ter -- ra
  pax, pax,
  pax ho -- mi -- ni -- bus
  bo -- nae
  vo -- lun -- ta -- tis.
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "Allegro moderato"
    d4\f r r2
    d4\p r b r
    gis2\f a
    a4 r a' r
    a8 f g a d,4 e8 a
  }
}

BassFigures = \figuremode {
  r1
  r
  <7 5>2 <_+>4 <\t>
  <_+>2 <\t>
  q2. <7>8 <_+>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
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
    >>
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
